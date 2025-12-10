import "dart:convert";
import "dart:io";
import "package:shelf/shelf.dart";
import "package:spotube/provider/server/libs/eventsource_publisher.dart";

class EventSourceEncoder extends Converter<Event, List<int>> {
  final bool compressed;

  const EventSourceEncoder({this.compressed = false});

  static final Map<String, Function> _fields = {
    "id: ": (e) => e.id,
    "event: ": (e) => e.event,
    "data: ": (e) => e.data,
  };

  @override
  List<int> convert(Event event) {
    String payload = convertToString(event);
    List<int> bytes = utf8.encode(payload);
    if (compressed) {
      bytes = gzip.encode(bytes);
    }
    return bytes;
  }

  String convertToString(Event event) {
    String payload = "";
    for (String prefix in _fields.keys) {
      String? value = _fields[prefix]?.call(event);
      if (value == null || value.isEmpty) {
        continue;
      }
      // multi-line values need the field prefix on every line
      value = value.replaceAll("\n", "\n$prefix");
      payload += "$prefix$value\n";
    }
    payload += "\n";
    return payload;
  }

  @override
  Sink<Event> startChunkedConversion(Sink<List<int>> sink) {
    Sink<dynamic> inputSink = sink;
    if (compressed) {
      inputSink =
          gzip.encoder.startChunkedConversion(inputSink as Sink<List<int>>);
    }
    inputSink =
        utf8.encoder.startChunkedConversion(inputSink as Sink<List<int>>);
    return new ProxySink(
        onAdd: (Event event) => inputSink.add(convertToString(event)),
        onClose: () => inputSink.close());
  }
}

/// Create a shelf handler for the specified channel.
/// This handler can be passed to the [shelf.serve] method.
Handler eventSourceHandler(
  EventSourcePublisher publisher, {
  String channel = "",
  bool gzip = false,
}) {
  // define the handler
  Response shelfHandler(Request request) {
    if (request.method != "GET") {
      return Response.notFound(null);
    }

    if (!request.canHijack) {
      throw ArgumentError("eventSourceHandler may only be used with a "
          "server that supports request hijacking.");
    }

    // set content encoding to gzip if we allow it and the request supports it
    bool useGzip =
        gzip && (request.headers["Accept-Encoding"] ?? "").contains("gzip");

    // hijack the raw underlying channel
    request.hijack((untypedChannel) {
      var socketChannel = (untypedChannel).cast<List<int>>();
      // create a regular UTF8 sink to write headers
      var sink = utf8.encoder.startChunkedConversion(socketChannel.sink);
      // write headers
      sink.add("HTTP/1.1 200 OK\r\n"
          "Content-Type: text/event-stream; charset=utf-8\r\n"
          "Cache-Control: no-cache, no-store, must-revalidate\r\n"
          "Connection: keep-alive\r\n");
      if (useGzip) sink.add("Content-Encoding: gzip\r\n");
      sink.add("\r\n");

      // create encoder for this connection
      var encodedSink = EventSourceEncoder(compressed: useGzip)
          .startChunkedConversion(socketChannel.sink);

      // initialize the new subscription
      publisher.newSubscription(
          onEvent: encodedSink.add,
          onClose: encodedSink.close,
          channel: channel,
          lastEventId: request.headers["Last-Event-ID"]);
    });
  }

  return shelfHandler;
}
