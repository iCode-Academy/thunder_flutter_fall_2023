import 'package:flutter/material.dart';

import 'auth_methods.dart';
import 'models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userName = '';

  @override
  Widget build(BuildContext context) {
    void getUserName() async {
      User user = await AuthMethods().getUserDetails();
      setState(() {
        userName = user.name;
      });
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                'Home Screen',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                userName,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(onPressed: () {
                getUserName();
              }, child: Text('Get User Details')),
              ElevatedButton(
                  onPressed: () {
                    AuthMethods().signOutUser();
                  },
                  child: Text('Sign Out'))
            ],
          ),
        ),
      )),
    );
  }
}
