import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder Example"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 150, // Adjust this width to see the effect
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 200) {
                return Text("Wide Layout");
              } else {
                return Text("Narrow Layout");
              }
            },
          ),
        ),
      ),
    );
  }
}
