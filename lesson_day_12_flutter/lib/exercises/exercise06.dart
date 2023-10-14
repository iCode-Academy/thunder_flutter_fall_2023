import 'package:flutter/material.dart';

class Exercise06 extends StatelessWidget {
  const Exercise06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Text('Star'),
        Icon(Icons.favorite, color: Colors.pink),
        Text('Heart'),
        Icon(Icons.home, color: Colors.blue),
        Text('Home'),
      ],
    );
  }
}
