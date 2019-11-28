import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();  //随机的字符串
    return new MaterialApp(
      title: 'wellcome flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('flutter_1'),
          backgroundColor: Colors.red,
        ),
        body: new Center(
          //child: new Text('Hello World'),
          //child: new Text(wordPair.asCamelCase),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordParir = new WordPair.random();
    return new Text('我是随机的字符串： ${wordParir.asCamelCase}');
  }
}