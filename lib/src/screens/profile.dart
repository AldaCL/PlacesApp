import 'package:flutter/material.dart';
import 'gradient_profile.dart';
import 'card_image_profile.dart';
import 'list_profile.dart';


class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return Container(
     // color: Colors.pink,
    //);


    return Scaffold(
      body:  Stack(
      children: <Widget>[
        GradientProfile("Profile"),
        ListProfile(),
        
        //CardImageProfile("/assets/place1.jpg", "Gorditas", "Gorditas de ron doque")
      ],

    ), 
    );
    
   

    //return GradientProfile("Profile");
  }



}