import 'package:flutter/material.dart';
class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('tool tips demo')),
      body:Center(
        child: Tooltip(
          message: '不要碰我，我怕痒',
          child: Image.network('http://www.pptbz.com/pptpic/UploadFiles_6909/201211/2012111719294197.jpg'),
        ),
      )
    );
  }
}