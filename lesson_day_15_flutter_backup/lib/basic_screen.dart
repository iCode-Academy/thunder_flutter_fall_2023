import 'package:flutter/material.dart';
import 'package:lesson_day_15_flutter/immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome to Flutter'),
        actions: [
          Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.edit),)
        ],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
            child: ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Text("I'm a drawer"),
        ),
      ),
    );
  }
}
