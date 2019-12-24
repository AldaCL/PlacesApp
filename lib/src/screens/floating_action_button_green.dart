import 'package:flutter/material.dart';



class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _FloatingActionButtonGreen();
  }


}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool idPressed = false;

  void onPressedFav(){
    setState(() {
    idPressed = ! idPressed;
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(
    SnackBar(
        content: Text(
          (idPressed)?"Added to Favs": "Eliminated of Favs"),
           ),
               );
    });
    
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      
      backgroundColor: Color(0xff11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        (idPressed)? Icons.favorite: Icons.favorite_border,
        ),
      
    );
  }

}