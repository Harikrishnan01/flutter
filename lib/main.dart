import 'package:etlab1/home.dart';
import 'package:etlab1/splash.dart';
import 'package:etlab1/splash1.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: splashsc(),
    );
  }
}
