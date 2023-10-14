import 'package:flutter/material.dart';

class Exercise09 extends StatelessWidget {
  const Exercise09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Icon(Icons.star), Text('Star')],
        ),
        Image.network('https://example.com/your-image-url.jpg'),
        Container(
          color: Colors.grey,
          padding: EdgeInsets.all(20),
          child: Text('Styled text inside a container'),
        ),
      ],
    );
  }
}
