import 'package:flutter/material.dart';
import 'myHomePage.dart';
import 'search.dart';
import 'profile.dart';




class PlacesApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlacesApp();
  }

  

}


class _PlacesApp extends State<PlacesApp>{

  int indexTap = 0;
  
  final List<Widget> widgetsChildren = [
    MyHomePage(), Search(),Profile(),

  ];



  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });

    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    
    

    return Scaffold(

      body: widgetsChildren[indexTap],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
            ),
      ]
      ),
      ),
    );
  }


}