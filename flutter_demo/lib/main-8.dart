import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'页面跳转返回数据',
    home:FirstPage()
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('页面跳转')),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){_navigateYM(context);},
      child: Text('跳转喽'),
    );
  }

  _navigateYM(BuildContext context) async{
    final result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>YM())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),));
  }

}


class YM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转了'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('跳转1'),
              onPressed: (){
                Navigator.pop(context,'跳转1到xxx');
              },
            ),
            RaisedButton(
              child: Text('跳转2'),
              onPressed: (){
                Navigator.pop(context,'跳转2到yyy');
              },
            )
          ],
        ),
      ),
    );
  }
}