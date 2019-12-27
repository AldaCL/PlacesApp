import 'package:flutter/material.dart';


class IconsBarProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IconsBarProfile();
  }



}


class _IconsBarProfile extends State<IconsBarProfile>{

  int indexButton = 0;
  bool isPressed = false;


  void onPressedBut(int index){

    setState(() {
      //indexButton = index;
      print("Presionaste el boton $index");
      Scaffold.of(context).removeCurrentSnackBar();
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Presionaste el boton $index"),
        )
      );
      //return indexButton;
      
    });

  }


  @override
  Widget build(BuildContext context) {  
    // TODO: implement build
    return Container(
      //margin: EdgeInsets.only(top: 10.0),
      child: Center(
        child: ButtonBar( 
          alignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          buttonPadding: EdgeInsets.only(left: 50),
          children: <Widget>[
            //Expanded(
              //margin: EdgeInsets.only(
                //left: 20,
                //right: 20,

              //),
               FloatingActionButton(
                
                backgroundColor: Colors.white,
                mini: true,
                onPressed: (){
                  isPressed =! isPressed;
                  onPressedBut(0);},
                  //int index =1;
                  
                child: Icon(Icons.motorcycle , color:  Colors.deepPurpleAccent ,),),
                
            //),

            

            //Expanded(
              //   margin: EdgeInsets.only(
              //   left: 20,
              //   //right: 20,

              // ),
              // child: 
              FloatingActionButton(
                backgroundColor: Colors.white,
                mini: true,
                onPressed: () {
                  isPressed =! isPressed;
                  onPressedBut(1);
                  },
                
                child: Icon(Icons.bookmark_border , color: (isPressed) ? Colors.deepPurpleAccent:Colors.deepPurple[200],),),
            //),

            //Expanded(
              //   margin: EdgeInsets.only(
              //   left: 20,
              //   //right: 20,
              // ),
              //child: 
              FloatingActionButton(
                backgroundColor: Colors.white,
                //mini: true,
                onPressed: ()=>
                onPressedBut(2),
                
                child: Icon(Icons.card_travel , color: Colors.deepPurpleAccent,),),
            //),

            //Expanded(
              //   margin: EdgeInsets.only(
              //   left: 20,
              //   //right: 20,

              // ),
              //child: 
              FloatingActionButton(
                backgroundColor: Colors.white,
                mini: true,
                onPressed: ()=>
                onPressedBut(3),
                
                child: Icon(Icons.add , color: Colors.deepPurpleAccent,),),
            //),

           // Expanded(
              //   margin: EdgeInsets.only(
              //   left: 20,
              //   //right: 20,

              // ),
             // child: 
             FloatingActionButton(
                
                backgroundColor: Colors.white,
                mini: true,
                onPressed: ()=>
                onPressedBut(4),
                
                child: Icon(Icons.person , color: Colors.deepPurpleAccent,),),
     //     )
          ],

        ),
      ),
    );
  }

}