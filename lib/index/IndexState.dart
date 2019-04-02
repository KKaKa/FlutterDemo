

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/fifth/ColorViewPage.dart';
import 'package:flutter_app/fifth/ListViewPage.dart';
import 'package:flutter_app/fifth/StackPage.dart';
import 'package:flutter_app/first/RandowWords.dart';
import 'package:flutter_app/fourth/CardPage.dart';
import 'package:flutter_app/fourth/ExpandedPage.dart';
import 'package:flutter_app/fourth/GridView.dart';
import 'package:flutter_app/index/IndexPage.dart';
import 'package:flutter_app/second/SecondPage.dart';
import 'package:flutter_app/third/NotMaterialPage.dart';
import 'package:flutter_app/third/RowPage.dart';
import 'package:toast/toast.dart';

class IndexState extends State<IndexPage>{
  final _index = <String>[
    'First',
    'Second',
    'NotMaterialPage',
    'RowAndColumn',
    'Expanded',
    'CardPage',
    'GridView',
    'ListView',
    'ColorView',
    'Stack'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('index')),
      body: _buildIndex(),
    );
  }

  void _onRoute(Widget widget){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return widget;
    }));
  }

  void _onTap(int index){
    switch(index){
      case 0:
        _onRoute(new RandowWords());
        break;

      case 1:
        _onRoute(new SecondPage());
        break;

      case 2:
        _onRoute(new NotMaterialPage());
        break;

      case 3:
        _onRoute(new RowPage());
        break;

      case 4:
        _onRoute(new ExpandedPage());
        break;

      case 5:
        _onRoute(new CardPage());
        break;

      case 6:
        _onRoute(new GridViewPage());
        break;

      case 7:
        _onRoute(new ListViewPage());
        break;

      case 8:
        _onRoute(new ColorViewPage());
        break;

      case 9:
        _onRoute(new StackPage());
        break;
    }
  }

  Widget _buildIndex(){
    return ListView.builder(
      itemCount: _index.length,
      itemBuilder: (context,index){
        return new ListTile(
          trailing: new Icon(Icons.trending_flat,color: Colors.blue),
          title: new Text(_index[index],style: new TextStyle(fontSize: 18.0)),
          onTap: () => _onTap(index)
        );
      },
    );
  }
}