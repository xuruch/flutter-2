import 'package:flutter/material.dart';
import 'bottom/home_screen.dart';
import 'bottom/email_screen.dart';
import 'bottom/pages_screen.dart';
import 'bottom/airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen())
      ..add(EmailScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Home',
                style:TextStyle(color:_BottomNavigationColor)
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Email',
                style:TextStyle(color:_BottomNavigationColor)
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Pages',
                style:TextStyle(color:_BottomNavigationColor)
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Airplay',
                style:TextStyle(color:_BottomNavigationColor)
              )
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
               _currentIndex = index;           
            });
          },
        ),
      );
    
  }
}