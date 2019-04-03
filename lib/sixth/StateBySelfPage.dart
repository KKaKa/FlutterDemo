
import 'package:flutter/material.dart';

class StateBySelfPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget管理自己的状态'),
      ),
      body: Center(
        child: TapBoxA(),
      ),
    );
  }
}

class TapBoxA extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new TapBoxAState();
}

class TapBoxAState extends State<TapBoxA>{
  bool _active = false;

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active? Colors.lightBlue[700] : Colors.grey
        ),
        child: Center(
          child: Text(_active ? 'Active' : 'Inactive',style: TextStyle(
            fontSize: 32.0,color: Colors.white
          ),),
        ),
      ),
    );
  }
}