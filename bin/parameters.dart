

void greet(String name, [String? message]) {
  print("Hello, $name!");
  if (message != null) {
    print(message);
  }
}

// Function with optional named parameters
void printUserInfo({String name = 'John', int age = 25, String city = 'Unknown'}) {
  print('Name: $name, Age: $age, City: $city');
}

void main() {
  greet(
      "John"); // Calling the greet() function with only the required parameter
  greet("Alice",
      "Welcome to Dart!"); // Calling the greet() function with both required and optional positional parameters

      // Calling the function with all parameters
  printUserInfo(name: 'Bob', age: 28, city: 'New York');  // Output: Name: Bob, Age: 28, City: New York
}