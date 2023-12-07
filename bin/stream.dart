import 'dart:async';

// void main() {
//   // Create a stream controller
//   final streamController = StreamController<int>();

//   // Add some data to the stream
//   for (var i = 1; i <= 5; i++) {
//     streamController.sink.add(i);
//   }

//   // Listen to the stream
//   final subscription = streamController.stream.listen(
//     (data) {
//       print('Received data: $data');
//     },
//     onError: (error) {
//       print('Error occurred: $error');
//     },
//     onDone: () {
//       print('Stream closed');
//     },
//   );

//   // Add more data to the stream
//   for (var i = 6; i <= 10; i++) {
//     streamController.sink.add(i);
//   }

//   // Handle errors in the stream
//   streamController.sink.addError('Some error occurred');

//   // Close the stream
//   streamController.close();

//   // Cancel the subscription
//   subscription.cancel();
// }


// import 'dart:async';

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