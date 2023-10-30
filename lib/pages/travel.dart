import 'package:flutter/material.dart';


class TravelPAgesState extends StatefulWidget {
  const TravelPAgesState({Key? key}) : super(key: key);

  @override
  State<TravelPAgesState> createState() => _TravelPAgesState();
}

class _TravelPAgesState extends State<TravelPAgesState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('推荐'),
        )
    );
  }
}


