import 'package:flutter/material.dart';

import 'display_page.dart';
import 'models/User.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  String? _name;
  int? _age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value.isNotEmpty ? value : null;
                });
              },
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'Enter your age',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _age = int.tryParse(value);
                });
              },
            ),
            if (_name != null && _name!.isNotEmpty && _age != null) // Show button when both name and age are filled
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  final user = User(name: _name!, age: _age!);
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