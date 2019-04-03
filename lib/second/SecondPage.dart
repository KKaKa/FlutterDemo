import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/sixth/FavouriteWidget.dart';
import 'package:flutter_app/third/NotMaterialPage.dart';
import 'package:toast/toast.dart';

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
          FavouriteWidget()
        ],
      ),
    );

    Column buildBottonColumn(Icon icon,String label,VoidCallback onPressed){
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new IconButton(color: color,onPressed: onPressed, icon: icon),
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

    void _onCall(){
      Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
        return new NotMaterialPage();
      }));
    }

    void _onNearMe(){
      Toast.show('onNearMe', context,duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
    }

    void _onShare(){
      Toast.show('onShare', context,duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBottonColumn(new Icon(Icons.call,color: Colors.blue), 'CALL',_onCall),
          buildBottonColumn(new Icon(Icons.near_me,color: Colors.blue), 'ROUTE',_onNearMe),
          buildBottonColumn(new Icon(Icons.share,color: Colors.blue), 'SHARE',_onShare)
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
          leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
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
