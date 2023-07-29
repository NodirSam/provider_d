import 'package:flutter/material.dart';
import 'package:provider_d/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'use provider of Dio',
      home: HomePage(),
    );
  }
}