import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/first/RandowWords.dart';
import 'package:flutter_app/index/IndexPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new IndexPage(),
      theme: new ThemeData(
        primaryColor: Colors.blue
      ),
    );
  }
}
