import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hello_hell/src/screens/floating_action_button_green.dart';


class CardImageProfile extends StatelessWidget{
  String pathimage = 'assets/place1.jpg';
  String pName = "Las Gorditas de Roque";
  String pDescription = "Aqui venden las gorditas de Chochinnita mas perras";
  String pSteps = "123,333,222 Steps";




  CardImageProfile(
    this.pathimage,
    this.pName,
    this.pDescription,
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
            height: 200.0,
            width: 350.0,
            margin: EdgeInsets.only(
              bottom: 100,
              left: 15,
            ),
      
      child: Stack(
        alignment: Alignment(0, 1.8),
        children: <Widget>[
          Container(
            height: 200.0,
            width: 350.0,
            //margin: EdgeInsets.only(
              //top: 70,
              //left: 20,
            //),
            decoration: BoxDecoration(
              image: DecorationImage(
              image:AssetImage(pathimage,),
              fit: BoxFit.cover),

              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0,7.0),
                ),
              ]
            
            ),  

          ),
              
           Stack(
             alignment: Alignment(0.9, 1.3),
              children: <Widget>[
                Container(
                  alignment: Alignment(-0.5,0),
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(
                    //top: 10,
                    left: 10
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        
                        Text(pName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          
                        ),
                        ),

                        Text(pDescription,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                          
                        ),

                        Text(pSteps,
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),)
                      ],
                    ),
                  ),
                ),
                FloatingActionButtonGreen(),    
              ],
            ),
          
        ],

      ),
    );
  }


}