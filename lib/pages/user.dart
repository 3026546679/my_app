import 'package:flutter/material.dart';


class UserPageState extends StatefulWidget {
  const UserPageState({Key? key}) : super(key: key);

  @override
  State<UserPageState> createState() => _UserPageState();
}


class _UserPageState extends State<UserPageState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('用户'),
        )
    );
  }
}


