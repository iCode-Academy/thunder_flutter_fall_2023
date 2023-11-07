
import 'package:flutter/material.dart';

class WordSearchGameV3 extends StatelessWidget {
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
  Set<String> selectedWords = Set(); // Store selected words


  void onWordSelected(String letter, int row, int col) {
    for (final word in words) {
      if (word.contains(letter)) {
        // Check if the tapped letter is part of a word
        final startIndex = word.indexOf(letter);
        final endIndex = startIndex + 1;

        // Check if the entire word is selected
        if (grid[row][col] == word[startIndex] && selectedWords.contains(word.substring(startIndex, endIndex))) {
          return; // The word is already fully selected, do nothing
        }

        setState(() {
          for (int i = startIndex; i < endIndex; i++) {
            selectedWords.add(word.substring(i, i + 1));
          }
        });
      }
    }
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
                      // Handle word selection logic here.
                      onWordSelected(letter, row, col);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: selectedWords.contains(letter) ? Colors.green : null, // Highlight selected letters
                      ),
                      alignment: Alignment.center,
                      child: Text(selectedWords.contains(letter) ? letter : ' '), // Reveal the letter if it's selected
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Words to Find: ${words.join(", ")}'),
            Text('Selected Words: ${selectedWords.join(", ")}'), // Display selected words
          ],
        ),
      ),
    );
  }
}