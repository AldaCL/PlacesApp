import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'package:hello_hell/src/screens/places_description.dart';
import 'review.dart';
import 'review_list.dart';
import 'header_appbar.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    String textodescripcion = "La tienda de ron data vende todo lo que te puedas imaginar, toda la comida fea que te hara no reprobar el semestre está aquí.";

    return Scaffold(
      body: Stack( //Pone un elemento sobre otro 
        children: <Widget>[
          ListView(
            children: <Widget>[
              PlacesDescription("La tienda de Ron Data", textodescripcion,2),
              ReviewList(),
            ],
          ),
          HeaderAppbar(),
          //GradienBrack("Popular"),

          
        //PlacesDescription("La tienda de Ron Data", textodescripcion,2),
        ],

      ),

    );
  }


}
