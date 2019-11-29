import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'wellcome flutter',
      home: new RandomWords()
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
  final wordParir = new WordPair.random();
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('无限滚动'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions(){
        return new ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, i){
            if(i.isOdd){
                return new Divider();  //1像素高的widget
            }
            final index = (i ~/ 2);  //表示i除以2，但返回值是整形（向下取整）
            if(index >= _suggestions.length){
               _suggestions.addAll(generateWordPairs().take(10));
            }

            return _buildRow(_suggestions[index]);
          },
        );  
    }    

  Widget _buildRow(WordPair pair){
       return new ListTile(
         title: new Text(
           pair.asCamelCase,
           style: _biggerFont
         ),
       );
    }
}