import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'XRC Flutter Demo',
      home:Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget Demo')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7
          ),
          children: <Widget>[
            new Image.network('https://f10.baidu.com/it/u=2465775762,1509670197&fm=72',fit:BoxFit.cover),
            new Image.network('https://f11.baidu.com/it/u=642753244,1588215304&fm=72',fit:BoxFit.cover),
            new Image.network('https://f11.baidu.com/it/u=3087422712,1174175413&fm=72',fit:BoxFit.cover),
            new Image.network('https://f10.baidu.com/it/u=3001915256,970479921&fm=72',fit:BoxFit.cover),
            new Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2373144604,3573823380&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1995874357,4132437942&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2953424517,2592424793&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1922740179,1840515713&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3784560102,2294261336&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2373560198,301921565&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3746534151,160213986&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=139670673,2550279246&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=237109853,2776484100&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2207522901,194545036&fm=26&gp=0.jpg',fit:BoxFit.cover),
            new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3565585663,277598223&fm=26&gp=0.jpg',fit:BoxFit.cover),
          ],
        )
      )
    );
  }
}

// class MyList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return ListView(
//       scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             new Container(
//               width: 200.0,
//               color: Colors.lightBlue,
//             ),
//             new Container(
//               width: 200.0,
//               color: Colors.lightBlueAccent,
//             ),
//             new Container(
//               width: 200.0,
//               color: Colors.limeAccent,
//             ),
//           ],
//     );
//   }
// }