import 'package:flutter/material.dart';

class Exercise05 extends StatelessWidget {
  const Exercise05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 150, height: 150, color: Colors.green),
        Container(width: 200, height: 200, color: Colors.blue),
      ],
    );
  }
}
