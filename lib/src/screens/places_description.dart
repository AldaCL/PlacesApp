import 'package:flutter/material.dart';
import 'button_purple.dart';

class PlacesDescription extends StatelessWidget {

  String namePlace ;
  String descriptionPlace;
  int startsNumber;

  PlacesDescription(this.namePlace, this.descriptionPlace, this.startsNumber); //Constructor


  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   

    final descripcion = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: new Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A),
          fontFamily: "Ubuntu",
        ),
      ),
    );
    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 370.0,
        right: 2.0,
        
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );


    final starHalf = 
    Container(
      margin: EdgeInsets.only(
        top: 370.0,
        right: 3.0,
        
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );


    final stars = Container(
      margin: EdgeInsets.only(
        top: 370.0,
        right: 3.0,
        
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      
      ),
    );



    final titleStars = Row(
      children: <Widget>[
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(
              top: 370.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              "Tienda de Ron Data",
              overflow: TextOverflow.ellipsis,
              //maxLines: 1,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

              //textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 11),
          child: Row(
            children: <Widget>[
              stars,
              stars,
              starBorder,
              starBorder,
              starBorder,
            ],
          ),
        ),
      ],
    );

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[ 
      
        titleStars,
        descripcion,
        ButtonPurple("Navigate"),
      ],

    );
  }
}
