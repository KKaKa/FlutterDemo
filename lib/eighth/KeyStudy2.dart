
import 'package:flutter/material.dart';
import 'package:flutter_app/eighth/StatefulColorfulTile.dart';
import 'package:flutter_app/eighth/StatelessColorfulTile.dart';

class SwapColorPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SwapColorPageState2();
}

class SwapColorPageState2 extends State<SwapColorPage2>{

  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatefulColorfulTile(),
      StatefulColorfulTile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwapColorPage2'),
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


