import 'package:flutter/material.dart';

class WordSearchGameV6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WordSearchScreen(),
    );
  }
}

class WordSearchScreen extends StatefulWidget {
  const WordSearchScreen({super.key});

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
  final String hiddenWord = 'HELLO';
  String selectedLetter = ''; // Store the selected letter
  List<bool> revealedHiddenWord = [];

  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(hiddenWord.length, false); // Initialize with all letters hidden

  }

  void onLetterSelected(String letter) {
    final letterIndex = hiddenWord.indexOf(letter);

    setState(() {
      selectedLetter = letter;
      if (letterIndex >= 0) {
        revealedHiddenWord[letterIndex] = true;
      }
    });
  }

  bool isWordCorrect() {
    return hiddenWord.contains(selectedLetter);
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
                      onLetterSelected(letter);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: selectedLetter == letter ? Colors.blue : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        letter,
                        style: TextStyle(
                          color: selectedLetter == letter ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text('Selected Letter: $selectedLetter'),
            ElevatedButton(
              onPressed: () {
                if (isWordCorrect()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Correct! Revealing word in the hidden grid.'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Incorrect letter. Try again!'),
                    ),
                  );
                }
              },
              child: Text('Check Letter'),
            ),
            SizedBox(height: 20),
            Text('Hidden Word Grid:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: revealedHiddenWord
                  .map((revealed) => Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: revealed ? Colors.blue : null,
                ),
                alignment: Alignment.center,
                child: Text(
                  revealed ? selectedLetter : ' ',
                  style: TextStyle(
                    color: revealed ? Colors.white : Colors.black,
                  ),
                ),
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}