import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

// image examples

class Exercise10 extends StatelessWidget {
  const Exercise10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.asset('assets/path_to_image.png'),
        Image.network('https://example.com/path_to_image.jpg'),
        Image.file(File('/path_to_file.png')),
        Image.memory(Uint8List.fromList([])),
        FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          image: 'https://example.com/path_to_image.jpg',
        ),
        Image.asset(
          'assets/path_to_image.png',
          fit: BoxFit
              .cover, // You can use BoxFit values like cover, fill, contain, fitWidth, fitHeight, etc.
        ),
        Image.asset(
          'assets/path_to_image.png',
          color: Colors.blue.withOpacity(0.5),
          colorBlendMode: BlendMode.srcOver,
        ),
        ClipOval(
          child: Image.network('https://example.com/path_to_image.jpg'),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network('https://example.com/path_to_image.jpg'),
        ),
        Opacity(
          opacity: 0.5,
          child: Image.asset('assets/path_to_image.png'),
        )
      ]),
    );
  }
}
