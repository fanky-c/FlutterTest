import 'package:flutter/material.dart';

// void main(){
//   runApp(
//     new Center(
//       child: new Text(
//         'hello world!3',
//         textDirection: TextDirection.ltr,
//       ),
//     ),
//   );
// }

void main() => runApp(
  new MaterialApp(
    title: 'my app',
    //home: new MyScaffold(),
    //home: new TunoroalHome(),
    //home: new Counter(),
    home: new ShoppingList(
      products: [
        new Product(name: 'eggs'),
        new Product(name: 'flour'),
        new Product(name: 'fish'),
      ],
    ),
  ),
);


class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangeeCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget{
  ShoppingListItem({Product product, this.inCart, this.onCartChanged}) : product = product, super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangeeCallback onCartChanged;


  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart) return null;
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
     return new ListTile(
       onTap: (){
         onCartChanged(product, !inCart);
         print('${product.name}, $inCart');
       },
       leading: new CircleAvatar(
         backgroundColor: _getColor(context),
         child: new Text(product.name[0]),
       ),
       title: new Text(product.name, style:_getTextStyle(context)),
     );
  }
}


class ShoppingList extends StatefulWidget{
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;
  @override
  State<StatefulWidget> createState() {
    return new _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList>{
    Set<Product> _shoppingCart = new Set<Product>();

    void _handleCartChanged(Product product, bool inCart){
        setState(() {
          if(inCart){
             _shoppingCart.add(product);
          }else{
            _shoppingCart.remove(product);
          }
        });
    }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('商品列表'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
              return new ShoppingListItem(
                 product: product,
                 inCart: _shoppingCart.contains(product),
                 onCartChanged: _handleCartChanged,
              );
          }).toList(),
      )
    );
  }
}



//有状态widget
class Counter extends StatefulWidget{
   @override
   State createState() {
    return new _CounterState();
  }
}
class _CounterState extends State{
  int _count = 0;

  void _increment(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
     return new Row(
       children: <Widget>[
         new RaisedButton(
           onPressed: _increment,
           child: new Text('增加'),
         ),
         new Text('Count is: $_count')
       ],
     );    
  }
}

//Scaffold布局
class TunoroalHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: '导航菜单',
          onPressed: (){
            print('点击导航菜单');
          },
        ),
        title: new Text('测试'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: (){
              print('点击搜索按钮');
            },
          )
        ],
      ),
      body: new Center(
        child: new Text(
          'hello world',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      backgroundColor: Colors.green, 
      floatingActionButton: new FloatingActionButton(
        tooltip: '增加',
        child: new Icon(Icons.add),
        onPressed: (){
          print('点击增加按钮');
        },
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return new Material(
       child: new Column(
         children: <Widget>[
           new  MyAppBar(
             title: new Text(
               '测试',
               style:Theme.of(context).primaryTextTheme.title,
             ),
           ),
           new Expanded(
              child: new Center(
                child: new Text(
                  'hello world!',
                  style: TextStyle(color: Colors.black, fontSize: 50.0)
                ),
              ),
           ),
         ],
       ),
     );
  }
}


class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
     return new Container(
       height: 90.0,
       padding: const EdgeInsets.symmetric(horizontal:8.0),
       decoration: new BoxDecoration(color: Colors.red[600]),
       child: new Row(
         children: <Widget>[
           new IconButton(
             icon:new Icon(Icons.menu),
             tooltip: '导航目录',
             onPressed: null,
           ),
           new Expanded(
             child: title,
           ),
           new IconButton(
             icon: new Icon(Icons.search),
             tooltip: '搜索',
             onPressed: null,
           ),
         ],
       ),
     );
  }
}