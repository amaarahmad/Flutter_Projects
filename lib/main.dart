import 'package:class_practice/bottomnav.dart';
import 'package:class_practice/chat_dummy.dart';
import 'package:class_practice/homeScreen.dart';
import 'package:class_practice/sliverwidget.dart';
import 'package:class_practice/switch_bulb.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.brown,
      ),
      home: AppBarExample(),
    );
  }
}

