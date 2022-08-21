import 'package:flutter/material.dart';
import 'package:midterm_630710324/pages/web_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exam - 630710324',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: web_converter(),
    );
  }
}
