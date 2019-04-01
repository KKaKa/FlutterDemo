

import 'package:flutter/material.dart';
import 'package:flutter_app/third/ColumnPage.dart';

class RowPage extends StatelessWidget{
  var _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return new MaterialApp(
      title:'Row',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RowAndColumn'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.chevron_right), onPressed: _onNext)
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(10.0),
          child: new ListView(
            children: <Widget>[
              _buildRowSpaceEvenly(),
              _buildRowSpaceAround(),
              _buildRowSpaceBetween(),
              _buildRowCenter(),
              _buildRowStart(),
              _buildRowEnd(),
            ],
          ),
        ),
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }

  void _onNext(){
    Navigator.push(_context, new MaterialPageRoute(builder: (BuildContext context){
        return new ColumnPage();
    }));
  }

  /**
   * Place the free space evenly between the children as well as before and after the first and last child.
   */
  Widget _buildRowSpaceEvenly(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }

  /**
   * Place the free space evenly between the children as well as half of that space before and after the first and last child.
   */
  Widget _buildRowSpaceAround(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }

  /**
   * Place the free space evenly between the children.
   */
  Widget _buildRowSpaceBetween(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }

  /**
   * Place the children as close to the middle of the main axis as possible.
   */
  Widget _buildRowCenter(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }

  Widget _buildRowStart(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }

  Widget _buildRowEnd(){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: <Widget>[
        new Image.asset('images/test1.png'),
        new Image.asset('images/test2.png'),
        new Image.asset('images/test3.png')
      ],
    );
  }
}