

import 'package:flutter/material.dart';
import 'package:flutter_app/fourth/CardPage.dart';

class ExpandedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return new MaterialApp(
      title: 'ExpandedPage',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ExpandedPage'),
          leading: Builder(builder: (BuildContext buildContext){
            return new IconButton(icon: const Icon(Icons.keyboard_backspace), onPressed: (){
              //这里要使用StatelessWidget的Context
              Navigator.pop(context);
            });
          }),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext buildContext){
                return new CardPage();
              }));
            })
          ],
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
      ),
    );
  }
}

