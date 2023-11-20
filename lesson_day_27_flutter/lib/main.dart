import 'package:flutter/material.dart';
import 'package:lesson_day_27_flutter/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('It is succesfully initialized');
  runApp(MaterialApp(home: SignUpPage()));
}