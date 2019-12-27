import 'package:flutter/material.dart';
import 'iconsbar_profile.dart';


class GradientProfile extends StatelessWidget{
  String head_text = 'Profile';
  String pathImage = "assets/img/profile.jpg";
  String userName = "Aldair Cortés";
  //String pathImage = '';

  GradientProfile(this.head_text);

  @override
  Widget build(BuildContext context) {

    final photo= Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20,
      ),

      width: 80,
      height:80,
      
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        )
      ),
    
    );

    final user_info_column = 
    Container(
      margin: EdgeInsets.only(left: 20),
      //alignment: Alignment(),

    child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text(userName,
      style: TextStyle(
      fontSize: 18,
      color: Colors.white,
       ),
       textAlign: TextAlign.left,
      ),
      Text("mimail@gmail.com",  style: TextStyle(
        fontSize: 16,
        color: Colors.white70,
        
      ),
      textAlign: TextAlign.left)



    ],
    ),
    );




    // TODO: implement build
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3), //Tono mas claro 
            Color(0xFF584CD1) //Tono mas oscuro
          ],
          begin: FractionalOffset(0.1, 0.0),
          end: FractionalOffset(0.5, 0.6),
          stops: [0.0,0.4],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
               top: 60,
               ),
            alignment: Alignment(-0.9, -0.4),
            child: Text(head_text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,

            ),),
          ),

          Row(
            children: <Widget>[
              photo,
              user_info_column,
              


            ],
//////////IconBars
          ),
          IconsBarProfile(),

        ],

      ),
    );
  }


}