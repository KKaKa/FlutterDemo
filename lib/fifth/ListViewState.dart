

import 'package:flutter/material.dart';
import 'package:flutter_app/fifth/ListViewPage.dart';
import 'package:toast/toast.dart';
class ListViewState extends State<ListViewPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ListViewPage'),
      ),
      body: new ListView(
        children: <Widget>[
          _listTile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _listTile('The Castro Theater', '429 Castro St', Icons.theaters),
          _listTile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _listTile('Roxie Theater', '3117 16th St', Icons.theaters),
          _listTile('United Artists Stonestown Twin', '501 Buckingham Way',Icons.theaters),
          Divider(height: 26.0),
          _listTile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
          _listTile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
          _listTile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _listTile('La Ciccia', '291 30th St', Icons.restaurant),
        ],
      ),
    );
  }

  ListTile _listTile(String title,String subTitle,IconData icon) => ListTile(
    title: Text(title,style: new TextStyle(fontSize: 20.0)),
    subtitle: Text(subTitle),
    leading: Icon(icon,color: Colors.blue[500]),
    onTap: (){Toast.show(title, context,duration: Toast.LENGTH_LONG);},
  );
}
