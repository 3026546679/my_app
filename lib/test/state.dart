import 'package:flutter/material.dart';


// NavBar
class MyAppBar extends StatelessWidget{
  const MyAppBar({super.key, required this.title});
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

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(onPressed: _increment, child: const Text('Increment')),
        const SizedBox(width: 16),
        Text('Count:$_counter'),
      ],
    );
  }
}


// ActionButton
class ActionButton extends StatelessWidget{
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:const [
          FloatingActionButton(onPressed: null,tooltip: 'add',child:Icon(Icons.add))
        ]
    );
  }
}

// body
class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(title: Text('Example title',style:Theme.of(context).primaryTextTheme.headline6)),
          const Expanded(child: Center(child: Text('Hello world'))),
          const Counter(),
          const ActionButton()
        ],
      ),
    );
  }

}


void main() {
  runApp(
    const MaterialApp(
      title: 'My APP',
      home: SafeArea(child: MyScaffold()),
    ),
  );
}