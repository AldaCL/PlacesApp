import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myHomePage.dart';
import 'search.dart';
import 'profile.dart';


class CupertinoBottomBar extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo,),
              title: Text("Home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo,),
              title: Text("Search")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo,),
              title: Text("Profile")
            ),
          ],
        ),

        tabBuilder: (BuildContext context, int index){
          switch (index) {
            case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => MyHomePage(),
            );

            case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => Search(),
            );

            case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => Profile(),
              );
              
              break;
            default:
            return CupertinoTabView(
              builder: (BuildContext context) => MyHomePage(),
            );
          }
        }
      ),
    );
  }
  

}
