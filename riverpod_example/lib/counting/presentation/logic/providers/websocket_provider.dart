import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/counting/data/datasource/fake_websocket_client.dart';
import 'package:riverpod_example/counting/data/datasource/iwebsocket_client.dart';

final websocketProvider = Provider<WebsocketClientNotifier>((ref) {
  return WebsocketClientNotifier();
});

class WebsocketClientNotifier extends StreamNotifier<int> {
  late final IWebsocketClient _websocketClient;

  WebsocketClientNotifier() {
    _websocketClient = FakeWebsocketClient();
  }

  @override
  Stream<int> build() {
    return _websocketClient.getCounterStream();
  }
}
