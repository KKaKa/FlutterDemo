
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePage'),
      ),
      body: Column(
        children: <Widget>[
          Image.network('https://picsum.photos/250?image=9'),
          Image.network('https://n.sinaimg.cn/tech/transform/539/w345h194/20190416/bzau-hvsckth4017252.gif')
        ],
      )
    );
  }
}