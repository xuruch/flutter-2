
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// stack 布局
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2953424517,2592424793&fm=26&gp=0.jpg"),
          radius: 100.0,
        ),
        new Positioned(
          top: 10.0,
          child: new Text('I am xrc'),
        ),
        new Positioned(
          bottom: 10.0,
          right: 10.0,
          child: new Text('xuruochen.cn'),
        )
      ],
    );
    return MaterialApp(
      title: 'stack Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('stack布局'),
        ),
        body:Center(
          child:stack
        )
      ),
    );
  }
}