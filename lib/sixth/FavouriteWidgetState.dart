
import 'package:flutter/material.dart';
import 'package:flutter_app/sixth/FavouriteWidget.dart';

class FavouriteWidgetState extends State<FavouriteWidget>{
  bool _favourited = true;
  int _favouriteCount = 41;

  void _toggleFavourite() {
    setState(() {
      if(_favourited){
        _favouriteCount -= 1;
        _favourited = false;
      }else{
        _favouriteCount += 1;
        _favourited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0.0),
          child: IconButton(icon:Icon(_favourited? Icons.star:Icons.star_border), onPressed: _toggleFavourite,color: Colors.red[500]),
        ),
        SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text('$_favouriteCount')
          ),
        ),
      ],
    );
  }
}