import 'package:riverpod/riverpod.dart';
import 'package:spotube/provider/server/libs/eventsource_publisher.dart';

final ssePublisherProvider = Provider<EventSourcePublisher>(
  (ref) {
    final publisher = EventSourcePublisher(cacheCapacity: 100);

    ref.onDispose(() {
      publisher.close();
    });

    return publisher;
  },
);
