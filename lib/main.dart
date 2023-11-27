import 'package:flutter/material.dart';
import 'package:surprise_test_01/pages/search.dart';
import 'package:surprise_test_01/pages/login.dart';
import 'package:surprise_test_01/pages/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login(),
        "/search": (context) => search(),
        "/location": (context) => location()
      },
    );
  }
}