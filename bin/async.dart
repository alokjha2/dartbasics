

Future<void> fetchData() async {
  print('Fetching data...');
  // Simulating a time-consuming operation
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
}

// concurrent operations
Future<void> main() async {
  final future1 = fetchData();
  final future2 = fetchData();

  await Future.wait([future1, future2]);

  print('Both operations completed');
}
