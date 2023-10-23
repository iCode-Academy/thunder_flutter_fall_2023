import 'package:flutter/material.dart';

class TestStateScreen extends StatefulWidget {
  const TestStateScreen({super.key});

  @override
  State<TestStateScreen> createState() => _TestStateScreenState();
}

class _TestStateScreenState extends State<TestStateScreen> {
  String word = 'a';

  void _appendWord() {
    setState(() {
      word = word + 'hi';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                this.word,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            IconButton(onPressed: this._appendWord, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
