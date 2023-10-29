import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Search Safety',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Word Search Safety'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Puzzle 2D List',
              ),
              WordSearch(),
            ],
          ),
        ),
      ),
    );
  }
}

class WordSearch extends StatefulWidget {
  @override
  _WordSearchState createState() => _WordSearchState();
}

class _WordSearchState extends State<WordSearch> {
  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  final WSSettings settings = WSSettings(
      width: 10,
      height: 10,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.vertical,
        WSOrientation.diagonal,
      ]));
  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;

  @override
  void initState() {
    super.initState();
    newPuzzle = wordSearch.newPuzzle(wordList, settings);
    if (newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(newPuzzle!.puzzle!, ['hello', 'world']);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (newPuzzle!.errors!.isEmpty) {
      return Column(
        children: [
          for (var row in newPuzzle!.puzzle!)
            Row(
              children: [
                for (var cell in row)
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        cell,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              ],
            ),
          Text(
            'Found Words!',
          ),
          Column(
            children: [
              for (var element in solved!.found!)
                Column(
                  children: [
                    Text(
                      'word: ${element.word}, orientation: ${element.orientation}',
                    ),
                    Text(
                      'x:${element.x}, y:${element.y}',
                    ),
                  ],
                ),
            ],
          ),
          Text(
            'Not found Words!',
          ),
          Column(
            children: [
              for (var element in solved!.notFound!)
                Text(
                  'word: ${element}',
                ),
            ],
          ),
        ],
      );
    } else {
      return Text(
        'Errors: ${newPuzzle!.errors}',
      );
    }
  }
}