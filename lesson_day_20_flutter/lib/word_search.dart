import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchApp extends StatelessWidget {
  const WordSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Search Safety',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Word Search Safety'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Puzzle 2D List',
              ),
              _WordSearch(),
            ],
          ),
        ),
      ),
    );
  }
}

class _WordSearch extends StatefulWidget {
  const _WordSearch({super.key});

  @override
  _WordSearchState createState() => _WordSearchState();
}

class _WordSearchState extends State<_WordSearch> {
  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  final WSSettings settings = WSSettings(
      width: 10,
      height: 1,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.vertical,
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
          Container(
            height: 300, // or any other value you find suitable
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: settings.width,
              ),
              itemCount: settings.width * settings.height,
              itemBuilder: (BuildContext context, int index) {
                final int row = index ~/ settings.width;
                final int col = index % settings.width;
                final cell = newPuzzle!.puzzle![row][col];
                return Container(
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
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),
          const Text(
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
          const Text(
            'Not found Words!',
          ),
          Column(
            children: [
              for (var element in solved!.notFound!)
                Text(
                  'word: $element',
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
