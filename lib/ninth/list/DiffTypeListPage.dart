
import 'package:flutter/material.dart';

abstract class ListItem {}

class HeadItem implements ListItem{
  final String title;

  HeadItem(this.title);
}

class MessageItem implements ListItem{
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class DiffTypeList extends StatelessWidget{
  final List<ListItem> items;

  const DiffTypeList({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          if(item is HeadItem){
            return ListTile(
              title: Text(
                item.title,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }else if(item is MessageItem){
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
    });
  }
}

class DiffTypeListPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DiffTypeListPage"),
      ),
      body: DiffTypeList(
        items: List<ListItem>.generate(100, (i) => i % 6 == 0? HeadItem("Heading $i") : MessageItem("Sender $i", "Body $i") ),
      ),
    );
  }
}