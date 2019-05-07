import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipperText(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

// 贝塞尔曲线切割
class BottomClipper extends CustomClipper<Path>{

  @override
    Path getClip(Size size) {
      // TODO: implement getClip
      var path = Path();
      path.lineTo(0, 0);
      path.lineTo(0, size.height-30);
      var firstControlPoint = Offset(size.width/2,size.height);
      var firstEndPoint = Offset(size.width,size.height-30);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
      path.lineTo(size.width, size.height-30);
      path.lineTo(size.width, 0);

      return path;
    }

    @override
      bool shouldReclip(CustomClipper<Path> oldClipper) {
        // TODO: implement shouldReclip
        return false;
      }

}

// 波浪形式的贝塞尔曲线
class BottomClipperText extends CustomClipper<Path>{

  @override
    Path getClip(Size size) {
      // TODO: implement getClip
      var path = Path();
 
      path.lineTo(0, 0);
      path.lineTo(0, size.height-40);
      var firstControlPoint = Offset(size.width/4,size.height);
      var firstEndPoint = Offset(size.width/2.25,size.height-30);
      // 第一个贝塞尔曲线
      path.quadraticBezierTo(
        firstControlPoint.dx, 
        firstControlPoint.dy, 
        firstEndPoint.dx, 
        firstEndPoint.dy
      );

      var secondControlPoint = Offset(size.width/4*3, size.height-90);
      var secondEndPoint = Offset(size.width,size.height-60);
      // 第二个贝塞尔曲线
      path.quadraticBezierTo(
        secondControlPoint.dx, 
        secondControlPoint.dy, 
        secondEndPoint.dx, 
        secondEndPoint.dy
      );

      // 结束曲线
      path.lineTo(size.width,size.height-40);
      path.lineTo(size.width, 0);

      return path;
    }

    @override
      bool shouldReclip(CustomClipper<Path> oldClipper) {
        // TODO: implement shouldReclip
        return false;
      }

}