import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class bar extends StatelessWidget{

  const bar({super.key, required this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(onPressed: null, icon: Icon(Icons.menu), tooltip: 'Navigation menu'),
          Expanded(child: title),
          const IconButton(onPressed: null, icon: Icon(Icons.search),tooltip: 'Search')
        ],
      ),
    );
  }

}


class WebDomeFirst extends StatefulWidget {
  const WebDomeFirst({Key? key}) : super(key: key);

  @override
  State<WebDomeFirst> createState() => _WebDomeFirstState();
}

class _WebDomeFirstState extends State<WebDomeFirst> {

  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: const <Widget>[
          bar(title: Text('webDome First'))
        ],
      ),
    );
  }
}


