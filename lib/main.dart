import 'package:flutter/material.dart';
import 'package:my_app/navigator/tab_navigator.dart';
import 'package:my_app/pages/splash.dart';
import 'package:my_app/pages/welcome.dart';

import 'mao/flex.dart';

// body
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '天纵期才',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins"
      ),
      // home: const SplashPage(),
      routes:{
        '/':(context)=> const SplashPage(),
        '/welcome':(context)=> const WelcomePages(),
        '/mao/flex':(context)=> const MaoFlexPage()
      },
    );
  }

}


void main() => runApp(const MyApp());