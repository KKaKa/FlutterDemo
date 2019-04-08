
import 'package:flutter/material.dart';
import 'package:flutter_app/seventh/ShoppingListItem.dart';


class ShoppingList extends StatefulWidget{
  const ShoppingList({Key key, this.productList}) : super(key: key);

  final List<Product> productList;

  @override
  State<StatefulWidget> createState() => new ShoppingListState();
}

class ShoppingListState extends State<ShoppingList>{
  Set<Product> _shoppingCart = new Set();

  void _handleCartChange(Product product,bool inCart){
    setState(() {
      if(inCart) _shoppingCart.add(product);
      else _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      children:
        widget.productList.map((Product product){
          return ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            callback: _handleCartChange,
          );
        }).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class ShoppingListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoppingListPage'),
      ),
      body: ShoppingList(
        productList: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips'),
          new Product(name: 'Eggs2'),
          new Product(name: 'Flour2'),
          new Product(name: 'Chocolate chips2'),
          new Product(name: 'Eggs3'),
          new Product(name: 'Flour3'),
          new Product(name: 'Chocolate chips3'),
        ],
      ),
    );
  }
}