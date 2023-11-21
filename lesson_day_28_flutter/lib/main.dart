import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_28_flutter/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // WidgetsFlutterBinding.ensureInitialized();
  // print('firebase initialized');
  runApp(
    MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            displayLarge:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            displayMedium:
                TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
            displaySmall: TextStyle(fontSize: 8.0, fontFamily: 'Hind'),
          )),
      home: App(),
    ),
  );
}



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          print(snapshot.error.toString());
          print('error');
          return const Text('Something went wrong');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return SignUp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}