import 'package:flutter/material.dart';


class SearchPageState extends StatefulWidget {
  const SearchPageState({Key? key}) : super(key: key);

  @override
  State<SearchPageState> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPageState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('搜索'),
        )
    );
  }
}

