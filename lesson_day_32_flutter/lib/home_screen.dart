import 'package:flutter/material.dart';
import 'package:lesson_day_32_flutter/add_post_screen.dart';
import 'package:provider/provider.dart';

import 'auth_methods.dart';
import 'models/user.dart' as model;
import 'providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    model.User? user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Home Screen',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Username',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                user.email,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthMethods().signOutUser();
                  },
                  child: const Text('Sign Out')),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddPostScreen()));
                  },
                  child: const Text('Go to Post Page'))
            ],
          ),
        ),
      )),
    );
  }
}
