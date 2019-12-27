import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_view_list.dart';


class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradienBrack("Wellcome"),
        CardViewList(),
      ],

    );
  }

}