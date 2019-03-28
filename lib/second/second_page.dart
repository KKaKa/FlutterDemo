import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget imageView = new Container(
      child: new Image.asset(
        'images/lake.jpg',
        height: 240.0,
        fit: BoxFit.cover,
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('41')
        ],
      ),
    );

    Column buildBottonColumn(IconData icon,String label){
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon,color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBottonColumn(Icons.call, 'CALL'),
          buildBottonColumn(Icons.near_me, 'ROUTE'),
          buildBottonColumn(Icons.share, 'SHARE')
        ],
      ),
    );

    Widget textView = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
          ''',
        //softwrap属性表示文本是否应在软换行符（例如句点或逗号）之间断开。
        softWrap: true,
        style: new TextStyle(
            fontSize: 12.0
        ),
      ),
    );

    return new MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: new ListView(
          children: <Widget>[
            imageView,
            titleSection,
            buttonSection,
            textView,
          ],
        ),
      ),
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
    );
  }
}
