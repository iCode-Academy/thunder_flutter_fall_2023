import 'package:flutter/material.dart';

class Exercise08 extends StatelessWidget {
  const Exercise08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: const Text('Hello from inside a Container!'),
    );
  }
}
