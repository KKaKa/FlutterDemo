
import 'package:flutter/material.dart';
import 'package:flutter_app/eighth/StatefulColorfulTile.dart';
import 'package:flutter_app/eighth/StatelessColorfulTile.dart';

class SwapColorPage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SwapColorPageState3();
}

class SwapColorPageState3 extends State<SwapColorPage3>{

  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatefulColorfulTile(key: UniqueKey()),
      StatefulColorfulTile(key: UniqueKey())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwapColorPage3'),
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


