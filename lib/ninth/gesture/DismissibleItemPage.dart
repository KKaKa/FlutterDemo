
import 'package:flutter/material.dart';

class DismissibleListView extends StatelessWidget{
  final List<String> items;

  const DismissibleListView({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction){
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("$item dismissed"),duration: const Duration(seconds: 1))
              );
            },
            background: Container(color: Colors.red),
            child: ListTile(title: Text('$item'),),
          );
        }
    );
  }
}

class DismissibleItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DismissibleItemPage'),
      ),

      body: DismissibleListView(
        items: List<String>.generate(100, (i) => 'Item $i'),
      ),
    );
  }
}