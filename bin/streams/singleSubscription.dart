


import 'dart:async';

void main() {
  final stream = Stream<int>.periodic(Duration(seconds: 1), (count) => count).take(4);

  final subscription = stream.listen(
    (data) {
      String message;
      switch (data) {
        case 1:
          message = 'Hey';
          break;
        case 2:
          message = 'Hello';
          break;
        case 3:
          message = "It's a sunny day";
          break;
        default:
          message = '';
      }
      if (message.isNotEmpty) {
        print('Received data: $message');
      }
    },
    onError: (error) {
      print('Error occurred: $error');
    },
    onDone: () {
      print('Stream closed');
    },
  );

  Future.delayed(Duration(seconds: 10), () {
    subscription.cancel();
  });
}