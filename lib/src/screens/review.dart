import 'package:flutter/material.dart';
import 'stars_review.dart';
//import 'places_description.dart';


class Review extends StatelessWidget{

  String pathImage = "assets/img/profile.jpg";
  String name = "Aldair C.";
  String details = "1 Review, 5 photos";
  String comment = "Los chilaquiles de ron Data rifan";
  int number_stars = 4;

  Review({
    this.pathImage,
    this.name,
    this.details,
    this.comment,
    this.number_stars,
  });


  @override
  Widget build(BuildContext context) {


  final userComment = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child:
      Text(
      comment,
      textAlign: TextAlign.left,
      //overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "ubuntu",
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        ),
      ),
  );

  final userInfo = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child:
    Row(
      children: <Widget>[
       Text(
      details,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: "ubuntu",
        fontSize: 14.0,
        color: Color(0xFFA3A5A7),
        ),
      ),
      Container(
        padding: EdgeInsets.only(right: 5),
          child: Row(
              children: ReviewStars.lista_estrellas(5, number_stars), 
          
          ),
        
      ) 
      ]
    ),
  );


  final userName = Container(
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: "ubuntu",
        fontSize: 18.0,
        ),
      ),
  );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: <Widget>[
        userName,
        userInfo,
        userComment,

      ],
    );

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

    return Row(
      children: <Widget>[
        photo,
        userDetails,

      ],
    );
  }

}