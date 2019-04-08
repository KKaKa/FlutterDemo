
import 'package:flutter/material.dart';

class Product{
  const Product({this.name});
  final String name;
}

typedef void CartChangeCallback(Product product,bool inCart);

class ShoppingListItem extends StatelessWidget{
  ShoppingListItem({this.product,this.inCart,this.callback}) :super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangeCallback callback;

  TextStyle _getTextType(BuildContext context){
    if(!inCart) return null;

    return new TextStyle(
      color: Colors.black45,
      decoration: TextDecoration.lineThrough
    );
  }

  Color _getColor(BuildContext context){
    return inCart? Colors.black45 : Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name,style: _getTextType(context)),
      onTap: (){
        callback(product,!inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
    ),
    );
  }

}