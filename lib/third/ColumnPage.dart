

import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Column',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ColumnPage'),
        ),
        body: new ListView(
          padding: const EdgeInsets.all(10.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            _buildColumnStart(),
            _buildColumnEnd(),
            _buildColumnCenter(),
            _buildColumnSpaceBetween(),
            _buildColumnSpaceAround(),
            _buildColumnSpaceEvenly()
          ],
        ),
      ),
    );
  }
}

Widget _buildColumnStart(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}

Widget _buildColumnEnd(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}

Widget _buildColumnCenter(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}

Widget _buildColumnSpaceBetween(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}

Widget _buildColumnSpaceAround(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}

Widget _buildColumnSpaceEvenly(){
  return new Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      new Image.asset('images/test1.png'),
      new Image.asset('images/test2.png'),
      new Image.asset('images/test3.png')
    ],
  );
}