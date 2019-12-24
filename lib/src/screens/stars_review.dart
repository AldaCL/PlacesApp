import 'package:flutter/material.dart';

enum StarType {border,half,full}

class ReviewStars extends StatelessWidget{

  StarType starType;

  ReviewStars(this.starType);

  _icon(){
    switch(starType){
      case StarType.border:
        return Icons.star_border;
      case StarType.half:
        return Icons.star_half;
      case StarType.full:
        return Icons.star;
      default:
        return Icons.star;
    }

  }
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Icon(
        _icon(),
        color: Color(0xfff2c611),
        size: 15,
      ),
    );
  }

  static lista_estrellas(int total, int selected){
    var stars = List.generate(selected, (x) => ReviewStars(StarType.full) );
    stars.addAll(List.generate(total-selected, (x) => ReviewStars(StarType.border)));
    return stars;

  }


} 