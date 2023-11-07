import 'package:flutter/material.dart';

class WordSearchGameV4 extends StatelessWidget {
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
  final List<List<String>> grid =  [
    ['W', 'O', 'R', 'D', 'F'],
    ['L', 'G', 'A', 'M', 'T'],
    ['U', 'S', 'R', 'K', 'E'],
    ['T', 'N', 'H', 'C', 'H'],
    ['F', 'Z', 'E', 'S', 'M'],
  ];
  List<String> currentWord = [];
  List<String> revealedWords = [];

  void revealWord() {
    final selectedWord = currentWord.join('');
    if (words.contains(selectedWord) && !revealedWords.contains(selectedWord)) {
      setState(() {
        revealedWords.add(selectedWord);
      });
    }
    currentWord = [];
  }

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
                  final letter = grid[row][col];
                  return GestureDetector(
                    onTap: () {
                      // Handle letter selection logic here.
                      setState(() {
                        currentWord.add(letter);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: currentWord.contains(letter) ? Colors.blue : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(letter),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Words to Find: ${words.join(", ")}'),
            Text('Revealed Words: ${revealedWords.join(", ")}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: revealWord,
        child: Icon(Icons.check),
      ),
    );
  }
}