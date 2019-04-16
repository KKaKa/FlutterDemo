
import 'package:flutter/material.dart';

class OnTapPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnTapPage'),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10)),

      onTap: (){
        final snackBar = SnackBar(content: Text("Tap"));
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration:ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                  color: Theme.of(context).primaryColor,
                  style: BorderStyle.solid,width: 2
              )
          )
        ),
        child: Text('My Button'),
      ),
    );
  }
}