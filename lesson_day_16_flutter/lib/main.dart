import 'package:flutter/material.dart';
import 'package:lesson_day_16_flutter/flex_screen.dart';
import 'package:lesson_day_16_flutter/home_screen.dart';
import 'package:lesson_day_16_flutter/test_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FlexScreen(),
    );
  }
}
