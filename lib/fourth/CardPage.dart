

import 'package:flutter/material.dart';
import 'package:flutter_app/fourth/GridView.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 12.0,
      height: 2.0,
    );

    final titleText = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        'Strawberry Pavlova',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: new TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 24,
        ),
      ),
    );

    final subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
          'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
          'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 16,
      ),
    );

    final ratings = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star,color: Colors.green[500]),
              new Icon(Icons.star,color: Colors.green[500]),
              new Icon(Icons.star,color: Colors.green[500]),
              new Icon(Icons.star,color: Colors.black),
              new Icon(Icons.star,color: Colors.black),
            ],
          ),
          new Text(
            '170 Reviews',
            style: new TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20.0
            ),
          )
        ],
      ),
    );

    final iconsList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildColumn(Icons.kitchen,'PREP:','20 min'),
              _buildColumn(Icons.timer,'COOK:','1 hr'),
              _buildColumn(Icons.kitchen,'FEEDS:','4-6')
            ],
          ),
        )
    );

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: new Column(
        children: <Widget>[
          titleText,
          subTitle,
          ratings,
          iconsList
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CardPage'),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Card(
          child: new SingleChildScrollView(
            child: leftColumn,
          ),
        ),
      ),
    );
  }
}

Column _buildColumn(IconData icon,String textDescription,String time){
  return new Column(
    children: <Widget>[
      new Icon(icon,color: Colors.green[500]),
      new Text(textDescription),
      new Text(time)
    ],
  );
}

