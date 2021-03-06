import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_router/alert.dart';

void main() => runApp(MaterialApp(
  title: 'Navigation & router',
  home: FirstPage(),
));


//第一个页面
class FirstPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('第一个页面'),
      ),
      body: SafeArea(
        child: RaisedButton(
          child: new Text('点击跳转'),
          onPressed: (){
            show(context, '我擦');
            _navigateSecondPage(context);
            print('点击了');
          },
        ),
      ),
    );
  }
}


//第二个页面
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: new AppBar(
         title: new Text('第二个页面'),
       ),
       body: SafeArea(
         child: RaisedButton(
           child: new Text('点击返回'),
           onPressed: (){
             _backCurrentPage(context);
             print('点击了');
           },
         ),
       ),
     );
  }
}

//跳转到具体页面
void _navigateSecondPage(BuildContext context){
  //  Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return SecondPage();
  //  }));
   Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
     
}

void _backCurrentPage(BuildContext context){
   Navigator.of(context).pop('我是第二个页面返回数据');
}