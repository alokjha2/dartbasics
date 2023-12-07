



import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to fetch data asynchronously from an API
Future<List<dynamic>> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch data');
  }
}



void main() {
  print('Fetching data...');
  
  final future = fetchData(); // Call the function to get a future object
  
  future.then((data) {
    print('Data fetched successfully:');
    for (var item in data) {
      print('Title: ${item['title']}');
      print('Body: ${item['body']}');
      print('---');
    }
  }).catchError((error) {
    print('Error occurred: $error');
  }).whenComplete(() {
    print('Program completed');
  });
}