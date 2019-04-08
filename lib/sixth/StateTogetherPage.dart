
import 'package:flutter/material.dart';

/**
 * 父类管理_active 子类管理_hightlight
 */
class StateTogetherWidgetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateTogether'),
      ),
      body: Center(
        child: ParentWidget(),
      )
    );
  }
}

class ParentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget>{
  bool _active = false;

  void _handleTapBoxTap(bool active){
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBox(
        active: _active,
        onChange: _handleTapBoxTap,
      ),
    );
  }
}

class TapBox extends StatefulWidget{
  TapBox({Key key,this.active,this.onChange});

  final bool active;
  final ValueChanged<bool> onChange;

  @override
  State<StatefulWidget> createState() => new _TapBoxState();
}

class _TapBoxState extends State<TapBox>{
  bool _hightlight = false;

  void _handleTapDown(TapDownDetails detail){
    setState(() {
      _hightlight = true;
    });
  }

  void _handleTapUp(TapUpDetails detail){
    setState(() {
      _hightlight = false;
    });
  }

  void _handleCancel(){
    setState(() {
      _hightlight = false;
    });
  }

  void _handleTap(){
    widget.onChange(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      onTapUp: _handleTapUp,
      onTapDown: _handleTapDown,
      onTapCancel: _handleCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active? Colors.lightGreen[700] : Colors.grey[500],
          border: _hightlight? new Border.all(color: Colors.teal[700],width: 10.0) : null
        ),
      ),
    );
  }
}