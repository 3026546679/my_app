import 'package:flutter/material.dart';


class TestListPage extends StatefulWidget {
  const TestListPage({Key? key, required String username, required String password}) : super(key: key);

  @override
  State<TestListPage> createState() => _TestListPageState();
}

class _TestListPageState extends State<TestListPage> {
  List pagesList = [
    {
      "name":"状态",
      "link":"/state",
    },{
      "name":"状态",
      "link":"/state",
    },{
      "name":"状态",
      "link":"/state",
    },{
      "name":"状态",
      "link":"/state",
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home App"),
      ),
      body: ListView(children: _homePageList()),
    );
  }

  _homePageList(){
    List<Widget> widgets = [];

    for (int i = 0;i < pagesList.length; i++){
      widgets.add(GestureDetector(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("$pagesList[i]['name']")
        ),
        onTap:(){

        },
      ));
    }

    return widgets;
  }
}

