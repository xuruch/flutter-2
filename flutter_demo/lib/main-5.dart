
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// card 布局
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('安徽省滁州市凤阳县',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('xrc:1888888888'),
            leading: new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
          new Divider(), // 分隔线
          ListTile(
            title: Text('安徽省滁州市凤阳县',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('xrc:1888888888'),
            leading: new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('安徽省滁州市凤阳县',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text('xrc:1888888888'),
            leading: new Icon(Icons.account_box,color:Colors.lightBlue),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'stack Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('card布局'),
        ),
        body:Center(
          child:card
        )
      ),
    );
  }
}