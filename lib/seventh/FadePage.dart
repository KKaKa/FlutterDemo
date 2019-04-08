import 'package:flutter/material.dart';

class FadePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FadeWidget(
      title: 'Fade Page',
    );
  }
}

class FadeWidget extends StatefulWidget{
  const FadeWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => new FadeState();
}

class FadeState extends State<FadeWidget> with TickerProviderStateMixin{

  AnimationController animationController;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    this.animationController = new AnimationController(duration: const Duration(milliseconds: 2000),vsync: this);
    this.curvedAnimation = new CurvedAnimation(parent: animationController, curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Center(
        child: Container(
          child: FadeTransition(opacity: curvedAnimation,child: FlutterLogo(size: 100.0)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.brush),
          onPressed: (){
            animationController.forward();
          }
      ),
    );
  }

}
