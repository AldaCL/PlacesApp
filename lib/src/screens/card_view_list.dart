import 'package:flutter/material.dart';
import 'card_image.dart';

class CardViewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    
    return Container(

      height:350.0 ,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal, // Define el scroll horizontal para las imagenes.
        children: <Widget>[

          CardImage("assets/img/place1.jpg"),
          CardImage("assets/img/place2.jpeg"),
          CardImage("assets/img/place3.jpeg"),
          CardImage("assets/img/place4.jpeg"),
          

        ],
      ),
      
    );
  }


}