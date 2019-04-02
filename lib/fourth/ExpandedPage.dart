

import 'package:flutter/material.dart';
import 'package:flutter_app/fourth/CardPage.dart';

class ExpandedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ExpandedPage'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(child: new Image.asset('images/pic1.jpg')),
                new Expanded(child: new Image.asset('images/pic2.jpg'),flex: 2,),
                new Expanded(child: new Image.asset('images/pic3.jpg'))
              ],
            ),
          ),

          new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Expanded(child: new Image.asset('images/pic1.jpg')),
                new Expanded(child: new Image.asset('images/pic2.jpg')),
                new Expanded(child: new Image.asset('images/pic3.jpg'))
              ],
            ),
          ),
        ],
      ),
    );

  }
}

