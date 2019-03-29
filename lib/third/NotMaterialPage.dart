import 'package:flutter/material.dart';

class NotMaterialPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget container1 = new Container(
      margin: const EdgeInsets.only(top: 10.0),
      child:
      new Text('Hello World',
        textDirection: TextDirection.ltr,
        style: new TextStyle(fontSize: 40.0,color: Colors.black87,decoration: TextDecoration.none),
      ),
    );


    Widget container2 = new Container(
      margin: const EdgeInsets.only(top: 10.0),
      child:
      new Text('Hello World',
      textDirection: TextDirection.rtl,
      style: new TextStyle(fontSize: 40.0,color: Colors.black87,decoration: TextDecoration.lineThrough,decorationColor: Colors.red)),
    );


    Widget container3 = new Container(
      margin: const EdgeInsets.only(top: 10.0),
      child:
      new Text('Hello World',
          textDirection: TextDirection.ltr,
          style: new TextStyle(fontSize: 40.0,color: Colors.black87,decoration: TextDecoration.overline)),
    );

    return new Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            container1,
            container2,
            container3
          ],
        )
    );
  }
}