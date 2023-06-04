import 'package:riverpod_example/counting/data/datasource/iwebsocket_client.dart';

class FakeWebsocketClient implements IWebsocketClient {
  @override
  Stream<int> getCounterStream() async* {
    int i = 0;
    while (i < 10001) {
      await Future.delayed(const Duration(seconds: 1));
      yield i++;
    }
  }
}
