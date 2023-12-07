// import 'dart:async';

// Future<void> main() async {
//   // Create a broadcast stream controller
//   final streamController = StreamController<int>.broadcast();

//   // Add some data to the stream
//   for (var i = 1; i <= 5; i++) {
//     streamController.sink.add(i);
//   }

//   // Listen to the stream
//   final subscription1 = streamController.stream.listen(
//     (data) {
//       print('Listener 1: Received data: $data');
//     },
//     onError: (error) {
//       print('Listener 1: Error occurred: $error');
//     },
//     onDone: () {
//       print('Listener 1: Stream closed');
//     },
//   );

//   // Add another listener to the stream
//   final subscription2 = streamController.stream.listen(
//     (data) {
//       print('Listener 2: Received data: $data');
//     },
//     onError: (error) {
//       print('Listener 2: Error occurred: $error');
//     },
//     onDone: () {
//       print('Listener 2: Stream closed');
//     },
//   );

//   // Close the stream after a short delay
//   await Future.delayed(Duration(seconds: 2));
//   streamController.close();

//   // Cancel the subscriptions
//   subscription1.cancel();
//   subscription2.cancel();
// }





import 'dart:async';

class Message {
  final String sender;
  final String content;

  Message(this.sender, this.content);
}

class MessagingService {
  final StreamController<Message> _messageController = StreamController<Message>.broadcast();

  Stream<Message> get messageStream => _messageController.stream;

  void sendMessage(String sender, String content) {
    final message = Message(sender, content);
    _messageController.sink.add(message);
  }

  void dispose() {
    _messageController.close();
  }
}

void main() {
  final messagingService = MessagingService();

  // User 1 listens to incoming messages
  final subscription1 = messagingService.messageStream.listen((message) {
    print('User received a message  from ${message.sender}: ${message.content}');
  });

  // User 2 listens to incoming messages
  final subscription2 = messagingService.messageStream.listen((message) {
    print('User received a message  from ${message.sender}:  ${message.content}');
  });

  // User 3 listens to incoming messages
  final subscription3 = messagingService.messageStream.listen((message) {
    print('User received a message  from ${message.sender}: ${message.content}');
  });

  // Simulating message sending
  messagingService.sendMessage('User 1', 'Hello!');
  messagingService.sendMessage('User 2', 'How are you doing?');
  messagingService.sendMessage('User 3', 'I have an important announcement!');

  // Clean up
  subscription1.cancel();
  subscription2.cancel();
  subscription3.cancel();
  messagingService.dispose();
}