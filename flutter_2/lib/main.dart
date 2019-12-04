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
    home: new TunoroalHome(),
  ),
);


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