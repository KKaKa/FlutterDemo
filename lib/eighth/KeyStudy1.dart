
import 'package:flutter/material.dart';
import 'package:flutter_app/eighth/StatefulColorfulTile.dart';
import 'package:flutter_app/eighth/StatelessColorfulTile.dart';

class SwapColorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SwapColorPageState();
}

class SwapColorPageState extends State<SwapColorPage>{

  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatelessColorfulTile(),
      StatelessColorfulTile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwapColorPage1'),
      ),
      body: SafeArea(child: Row(
        children: widgets,
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.widgets),
          onPressed: onChange),
    );
  }

  void onChange(){
    setState(() {
      widgets.insert(1, widgets.removeAt(0));
    });
  }
}


