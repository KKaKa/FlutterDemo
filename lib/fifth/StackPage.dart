

import 'package:flutter/material.dart';

class StackPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StackPage'),
      ),
      body: Center(child: _buildStack()),
    );
  }
}

Widget _buildStack() => Stack(
  alignment: const Alignment(0.6, 0.6),
  children: <Widget>[
    CircleAvatar(
      backgroundImage: AssetImage('images/test1.png'),
      radius: 100,
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.a,
      ),
      child: Text(
        'Mike',
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white
        ),
      ),
    ),
  ],
);
