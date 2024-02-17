import 'package:flutter/material.dart';
import 'package:lesson_day_19_flutter/input_page.dart';
import 'package:lesson_day_19_flutter/word_search.dart';
import 'package:word_search_safety/word_search_safety.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: InputPage(),
  ));
}
