import 'package:flutter/material.dart';

class WordSearchGameV2 extends StatelessWidget {
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
  final List<String> words = ['WORD'];
  final List<List<String>> grid = [
    ['W', 'O', 'R', 'D', 'F'],
    ['L', 'G', 'A', 'M', 'T'],
    ['U', 'S', 'R', 'K', 'E'],
    ['T', 'N', 'H', 'C', 'H'],
    ['F', 'Z', 'E', 'S', 'M'],
  ];
  Set<String> selectedWords = Set(); // Store selected words

  void onWordSelected(String word) {
    setState(() {
      selectedWords.add(word); // Add the selected word to the set
    });
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
                      // For example, if the tapped letter forms a word, add it to the selected words.
                      onWordSelected(letter);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: selectedWords.contains(letter)
                            ? Colors.green
                            : null, // Highlight selected letters
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
            Text('Selected Words: ${selectedWords.join(", ")}'),
            // Display selected words
          ],
        ),
      ),
    );
  }
}
