import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello_hell/src/screens/myHomePage.dart';
import 'package:hello_hell/src/screens/places_app.dart';
import 'package:hello_hell/src/screens/places_description.dart';
import 'package:hello_hell/src/screens/cupertino_bottombar.dart';
//import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter/services.dart';


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, //Put status bar at transparent.
      )
    );

    return MaterialApp(
      title: 'Test Project',
      debugShowCheckedModeBanner: false, //Quitar banner de debug mode
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      //home: MyHomePage(title: 'My App'),
      //home: PlacesApp(),
      home: CupertinoBottomBar(),
    );
  }
}