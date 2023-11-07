import 'package:flutter/material.dart';

class WordSearchGameV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WordSearchScreen(),
    );
  }
}

class WordSearchScreen extends StatefulWidget {
  @override
  _WordSearchScreenState createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  final List<String> words = ['FLUTTER', 'WORD', 'SEARCH', 'GAME'];

  List<List<String>> grid = [
    ['W', 'O', 'R', 'D', 'F'],
    ['L', 'G', 'A', 'M', 'T'],
    ['U', 'S', 'R', 'K', 'E'],
    ['T', 'N', 'H', 'C', 'H'],
    ['F', 'Z', 'E', 'S', 'M'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Search Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: grid[0].length,
                ),
                itemCount: grid.length * grid[0].length,
                itemBuilder: (BuildContext context, int index) {
                  final row = index ~/ grid[0].length;
                  final col = index % grid[0].length;
                  return GestureDetector(
                    onTap: () {
                      // Handle word selection logic here.
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      alignment: Alignment.center,
                      child: Text(grid[row][col]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Words to Find: ${words.join(", ")}'),
            // Add score and other UI elements here.
          ],
        ),
      ),
    );
  }
}
