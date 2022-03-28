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
    const title = 'Welcome to Hello World!';
    const heading = Text('Welcome to Hello World!');
    final message = WordPair.random();
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: heading,
          ),
          body: Center(
            child: Text(message.asPascalCase),
          )),
    );
  }
}
