

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/eighth/KeyStudy1.dart';
import 'package:flutter_app/eighth/KeyStudy2.dart';
import 'package:flutter_app/eighth/KeyStudy3.dart';
import 'package:flutter_app/fifth/ColorViewPage.dart';
import 'package:flutter_app/fifth/ListViewPage.dart';
import 'package:flutter_app/fifth/StackPage.dart';
import 'package:flutter_app/first/RandowWords.dart';
import 'package:flutter_app/fourth/CardPage.dart';
import 'package:flutter_app/fourth/ExpandedPage.dart';
import 'package:flutter_app/fourth/GridView.dart';
import 'package:flutter_app/index/IndexPage.dart';
import 'package:flutter_app/ninth/gesture/DismissibleItemPage.dart';
import 'package:flutter_app/ninth/gesture/OnTapPage.dart';
import 'package:flutter_app/ninth/image/CachedNetworkImagePage.dart';
import 'package:flutter_app/ninth/image/FadeImagePage.dart';
import 'package:flutter_app/ninth/image/GridListPage.dart';
import 'package:flutter_app/ninth/image/ImagePage.dart';
import 'package:flutter_app/ninth/list/DiffTypeListPage.dart';
import 'package:flutter_app/ninth/network/HttpPackageDemo.dart';
import 'package:flutter_app/ninth/network/WebSocketDemo.dart';
import 'package:flutter_app/ninth/todo/Todo.dart';
import 'package:flutter_app/second/SecondPage.dart';
import 'package:flutter_app/seventh/FadePage.dart';
import 'package:flutter_app/seventh/ShoppingList.dart';
import 'package:flutter_app/sixth/ContactPage.dart';
import 'package:flutter_app/sixth/StateByParentPage.dart';
import 'package:flutter_app/sixth/StateBySelfPage.dart';
import 'package:flutter_app/sixth/StateTogetherPage.dart';
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
    'Stack',
    'Contact',
    'widget管理自己的状态',
    'widget父类管理状态',
    '共同管理状态',
    '购物车',
    'Fade',
    'Key学习-less',
    'Key学习-ful 不添加key',
    'Key学习-ful 添加key',
    'ImagePage',
    'FadeImagePage',
    'CachedNetworkImagePage',
    'DiffTypeListPage',
    'GridListPage',
    'OnTapPage',
    'DismissibleItemPage',
    'Todo',
    'HttpPackagePage',
    'WebSocketPage'
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

      case 10:
        _onRoute(new ContactPage());
        break;

      case 11:
        _onRoute(new StateBySelfPage());
        break;

      case 12:
        _onRoute(new StateByPatentPage());
        break;

      case 13:
        _onRoute(new StateTogetherWidgetPage());
        break;

      case 14:
        _onRoute(new ShoppingListPage());
        break;

      case 15:
        _onRoute(new FadePage());
        break;

      case 16:
        _onRoute(new SwapColorPage());
        break;

      case 17:
        _onRoute(new SwapColorPage2());
        break;

      case 18:
        _onRoute(new SwapColorPage3());
        break;

      case 19:
        _onRoute(new ImagePage());
        break;

      case 20:
        _onRoute(new FadeImagePage());
        break;

      case 21:
        _onRoute(new CachedNetworkImagePage());
        break;

      case 22:
        _onRoute(new DiffTypeListPage());
        break;

      case 23:
        _onRoute(new GridListPage());
        break;

      case 24:
        _onRoute(new OnTapPage());
        break;

      case 25:
        _onRoute(new DismissibleItemPage());
        break;

      case 26:
        _onRoute(new TodoScreen());
        break;

      case 27:
        _onRoute(new HttpPackagePage());
        break;

      case 28:
        _onRoute(new WebSocketPage());
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