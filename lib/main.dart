// ignore: unused_import
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Welcome to Name Generator!';
    return const MaterialApp(
      title: title,
      home: RandomWords(), //Replace with Widget created below
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: const Text('Startup Name Generator'),
        ),
        // Add a ListView.builder widget to display the suggested word pairing.
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (BuildContext context, int i) {
            // Add a one-pixel-high divider widget
            if (i.isOdd) return const Divider();
            // The expression i ~/ 2 divides i by 2 and returns an integer result
            final index = i ~/ 2;
            // If reached the end of the available word pairings, then generate 10 more and add them to the suggestions list
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10));
            }
            return ListTile(
                title:
                    Text(_suggestions[index].asPascalCase, style: _biggerFont));
          },
        ));
    return scaffold;
  }
}
