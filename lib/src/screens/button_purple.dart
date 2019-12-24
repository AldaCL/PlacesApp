import 'dart:ui';
import 'package:flutter/material.dart';



class ButtonPurple extends StatelessWidget{

  String buttonText = "Navigate";
  ButtonPurple(this.buttonText);

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          top: 20.0,
            left: 20.0,
            right: 20.0,
      ),
      child: InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navegando Ando"),
            ),
          );
      
        },
        child: Container(
          //alignment: Alignment(0.0,-1.0),
          margin: EdgeInsets.only(
            // top: 20.0,
            // left: 20.0,
            // right: 20.0,

          ),
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(colors:[
              //Color(0xff0400EB),
              Color(0xff7DD2FF),
              Color(0xff6674E8),
             ],
             begin: FractionalOffset(0.2, 0.0),
             end: FractionalOffset(1.0, 0.6),
             stops: [0.0,0.6],
             tileMode: TileMode.clamp,


            )
          ),

          child: Center(
            child: Text(buttonText,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
             // fontFamily: "ubuntu",
             

            ),
              
            ),
          )


        ),  
      ),
    );
  }
  
}