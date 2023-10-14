import 'package:flutter/material.dart';

class Exercise07 extends StatelessWidget {
  const Exercise07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Icon(Icons.star), Icon(Icons.favorite)],
        ),
        Row(
          children: [
            Text('Star', style: TextStyle(fontSize: 20)),
            Text('Heart', style: TextStyle(fontSize: 20))
          ],
        ),
      ],
    );
  }
}
