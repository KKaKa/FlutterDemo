
import 'package:flutter/material.dart';
import 'package:flutter_app/fourth/GridView.dart';
import 'dart:developer';

class GridViewState extends State<GridViewPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('GridViewPage'),
      ),
      body: _buildGridView(),
    );
  }
}

GridView _buildGridView(){
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    padding: const EdgeInsets.all(4.0),
    children: photoList.map<Widget>((Photo photo) {
      return new GridTile(
        footer: GestureDetector(
          child: GridTileBar(
            backgroundColor: Colors.black45,
            title: _GridTitleText(photo.title),
          ),
        ),
        child: Image.asset(photo.assetName),
      );
    }).toList(),
  );
}

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text(text),
    );
  }
}

final List<Photo> photoList = [
    Photo(
      assetName: 'images/pic1.jpg',
      title: 'pic1'
    ),
    Photo(
        assetName: 'images/pic2.jpg',
        title: 'pic2'
    ),
    Photo(
        assetName: 'images/pic3.jpg',
        title: 'pic3'
    ),
    Photo(
        assetName: 'images/pic1.jpg',
        title: 'pic4'
    ),
    Photo(
        assetName: 'images/pic2.jpg',
        title: 'pic5'
    ),
    Photo(
        assetName: 'images/pic3.jpg',
        title: 'pic6'
    ),
    Photo(
        assetName: 'images/pic1.jpg',
        title: 'pic7'
    ),
];

class Photo {
  Photo({
    this.assetName,
    this.title,
  });

  final String assetName;
  final String title;
}