import 'package:word_search_safety/word_search_safety.dart';

void main() {
  print('Word Search Safety');
  // Create a list of words to be jumbled into a puzzle
  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  // Create a new puzzle
  final WSSettings settings = WSSettings(
      width: 10,
      height: 10,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.vertical,
        WSOrientation.diagonal,
      ]));

  // Create new instance of the WordSearch class
  final WordSearchSafety wordSearch = WordSearchSafety();
  // Generate the puzzle
  final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wordList, settings);

  if (newPuzzle.errors!.isEmpty) {
    // The puzzle output
    print('Puzzle 2D List');
    print(newPuzzle.toString());
  } else {
    // Output the errors
    print('Errors');
    print(newPuzzle.errors);
  }
  // Solve puzzle for given word list
  final WSSolved solved =
      wordSearch.solvePuzzle(newPuzzle.puzzle!, ['hello', 'world']);
  print('Found Words!');

  //All words that were found
  for (var element in solved.found!) {
    print('word: ${element.word}, orientation: ${element.orientation}');
    print('x:${element.x}, y:${element.y}');
  }

  // All words that could not be found
  print('Not found Words!');
  for (var element in solved.notFound!) {
    print('word: ${element}');
  }
}
