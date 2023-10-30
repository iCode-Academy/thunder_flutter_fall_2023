import 'package:flutter/material.dart';

import 'display_page.dart';
import 'models/User.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controller = TextEditingController();
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
              ),
              onSubmitted: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            if (_name != null && _name!.isNotEmpty)
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  final user = User(name: _name!, age: 0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPage(user: user),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
