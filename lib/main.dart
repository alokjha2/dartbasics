import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoPrint App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              printContent();
            },
            child: Text('Print Content'),
          ),
        ),
      ),
    );
  }

  void printContent() {
    // Example: Print the current page
    html.window.print();
  }
}
