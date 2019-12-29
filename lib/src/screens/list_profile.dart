import 'package:flutter/material.dart';
import 'card_image_profile.dart';


class ListProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 300
      ),
      height: 600,
      child: (
        ListView(
          
          padding: EdgeInsets.only(
            //top: 200,
          ),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Nice place"),
            CardImageProfile("assets/img/place2.jpeg", "Lugar 2", "Bad place"),
            CardImageProfile("assets/img/place3.jpeg", "Lugar 3", "Regular place"),
            CardImageProfile("assets/img/place4.jpeg", "Lugar 4", "Good dessert"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 5", "Good timming"),
            CardImageProfile("assets/img/place2.jpeg", "Lugar 6", "Bad place"),
          ],
        )
      ),
    );
  }


}