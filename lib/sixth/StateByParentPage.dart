
import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget{
  TapBoxB({Key key,this.active,@required this.onChage});

  final bool active;
  final ValueChanged<bool> onChage;

  void _handleTap(){
    onChage(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: active? Colors.lightBlue[700] : Colors.grey
        ),
        child: Center(
          child: Text(active ? 'Active' : 'Inactive',style: TextStyle(
              fontSize: 32.0,color: Colors.white
          ),),
        ),
      ),
    );
  }
}

class StateByPatentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new StateByParentPageState();
}

class StateByParentPageState extends State<StatefulWidget>{
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget父类管理状态'),
      ),
      body: Center(
        child: TapBoxB(
          active: _active,
          onChage: _handleTapboxChanged,
        ),
      ),
    );
  }
}