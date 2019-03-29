

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/first/RandowWords.dart';
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
    'RowAndColumn'
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