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
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
            CardImageProfile("assets/img/place1.jpg", "Lugar 1", "Ta chido"),
          ],
        )
      ),
    );
  }


}