import "dart:async";

import "package:collection/collection.dart";
import "package:logging/logging.dart" as log;

/// Just a simple [Sink] implementation that proxies the [add] and [close]
/// methods.
class ProxySink<T> implements Sink<T> {
  void Function(T) onAdd;
  void Function() onClose;
  ProxySink({required this.onAdd, required this.onClose});
  @override
  void add(t) => onAdd(t);
  @override
  void close() => onClose();
}

class EventCache {
  final int? cacheCapacity;
  final bool comparableIds;
  final Map<String, List<Event>> _caches = {};

  EventCache({this.cacheCapacity, this.comparableIds = true});

  void replay(Sink<Event> sink, String lastEventId, [String channel = ""]) {
    List<Event>? cache = _caches[channel];
    if (cache == null || cache.isEmpty) {
      // nothing to replay
      return;
    }
    // find the location of lastEventId in the queue
    int index;
    if (comparableIds) {
      // if comparableIds, we can use binary search
      index = binarySearch(cache, lastEventId);
    } else {
      // otherwise, we starts from the last one and look one by one
      index = cache.length - 1;
      while (index > 0 && cache[index].id != lastEventId) {
        index--;
      }
    }
    if (index >= 0) {
      // add them all to the sink
      cache.sublist(index).forEach(sink.add);
    }
  }

  /// Add a new [Event] to the cache(s) of the specified channel(s).
  /// Please note that we assume events are added with increasing values of
  /// [Event.id].
  void add(Event event, [Iterable<String> channels = const [""]]) {
    for (String channel in channels) {
      List<Event> cache = _caches.putIfAbsent(channel, () => []);
      if (cacheCapacity != null && cache.length >= cacheCapacity!) {
        cache.removeAt(0);
      }
      cache.add(event);
    }
  }

  void clear([Iterable<String> channels = const [""]]) {
    channels.forEach(_caches.remove);
  }

  void clearAll() {
    _caches.clear();
  }
}

class Event implements Comparable<Event> {
  /// An identifier that can be used to allow a client to replay
  /// missed Events by returning the Last-Event-Id header.
  /// Return empty string if not required.
  String? id;

  /// The name of the event. Return empty string if not required.
  String? event;

  /// The payload of the event.
  String? data;

  Event({this.id, this.event, this.data});

  Event.message({this.id, this.data}) : event = "message";

  @override
  int compareTo(Event other) => id!.compareTo(other.id!);
}

/// An EventSource publisher. It can manage different channels of events.
/// This class forms the backbone of an EventSource server. To actually serve
/// a web server, use this together with [shelf_eventsource] or another server
/// implementation.
class EventSourcePublisher implements Sink<Event> {
  log.Logger? logger;
  EventCache? _cache;

  /// Create a new EventSource server.
  ///
  /// When using a cache, for efficient replaying, it is advisable to use a
  /// custom Event implementation that overrides the `Event.compareTo` method.
  /// F.e. if integer events are used, sorting should be done on integers and
  /// not on the string representations of them.
  /// If your Event's id properties are not incremental using
  /// [Comparable.compare], set [comparableIds] to false.
  EventSourcePublisher({
    int cacheCapacity = 0,
    bool comparableIds = false,
    bool enableLogging = true,
  }) {
    if (cacheCapacity > 0) {
      _cache = EventCache(cacheCapacity: cacheCapacity);
    }
    if (enableLogging) {
      logger = log.Logger("EventSourceServer");
    }
  }

  final Map<String, List<ProxySink>> _subsByChannel = {};

  /// Creates a Sink for the specified channel.
  /// The `add` and `remove` methods of this channel are equivalent to the
  /// respective methods of this class with the specific channel passed along.
  Sink<Event> channel(String channel) => ProxySink(
      onAdd: (e) => add(e, channels: [channel]),
      onClose: () => close(channels: [channel]));

  /// Add a publication to the specified channels.
  /// By default, only adds to the default channel.
  @override
  void add(Event event, {Iterable<String> channels = const [""]}) {
    for (String channel in channels) {
      List<ProxySink>? subs = _subsByChannel[channel];
      if (subs == null) {
        continue;
      }
      _logFiner(
          "Sending event on channel $channel to ${subs.length} subscribers.");
      for (var sub in subs) {
        sub.add(event);
      }
    }
    _cache?.add(event, channels);
  }

  /// Close the specified channels.
  /// All the connections with the subscribers to this channels will be closed.
  /// By default only closes the default channel.
  @override
  void close({Iterable<String> channels = const [""]}) {
    for (String channel in channels) {
      List<ProxySink>? subs = _subsByChannel[channel];
      if (subs == null) {
        continue;
      }
      _logInfo("Closing channel $channel with ${subs.length} subscribers.");
      for (var sub in subs) {
        sub.close();
      }
    }
    _cache?.clear(channels);
  }

  /// Close all the open channels.
  void closeAllChannels() => close(channels: _subsByChannel.keys);

  /// Initialize a new subscription and replay when possible.
  /// Should not be used by the user directly.
  void newSubscription({
    required void Function(Event) onEvent,
    required void Function() onClose,
    required String channel,
    String? lastEventId,
  }) {
    _logFine("New subscriber on channel $channel.");
    // create a sink for the subscription
    ProxySink<Event> sub = ProxySink(onAdd: onEvent, onClose: onClose);
    // save the subscription
    _subsByChannel.putIfAbsent(channel, () => []).add(sub);
    // replay past events
    if (_cache != null && lastEventId != null) {
      scheduleMicrotask(() {
        _logFine("Replaying events on channel $channel from id $lastEventId.");
        _cache!.replay(sub, lastEventId, channel);
      });
    }
  }

  void _logInfo(message) {
    logger?.log(log.Level.INFO, message);
  }

  void _logFine(message) {
    logger?.log(log.Level.FINE, message);
  }

  void _logFiner(message) {
    logger?.log(log.Level.FINER, message);
  }
}
