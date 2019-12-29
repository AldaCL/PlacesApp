import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Review(
          pathImage: "assets/img/profile.jpg",
          comment:"Los chilaquiles de ron Data rifan",
          details: "3 likes, 4 Reviews",
          name: "Aldair C.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile1.png",
          comment:"Las tortas no rifan",
          details: "3 likes, 1 Reviews",
          name: "Juan A.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile2.png",
          comment:"Nice place",
          details: "10 likes, 2 Reviews",
          name: "John F.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile3.png",
          comment:"Baaaaaaaaaad",
          details: "0 Likes, 0 Reviews",
          name: "Seth G.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile1.png",
          comment:"Good AF",
          details: "33 likes, 41 Reviews",
          name: "Danny B.",
          number_stars: 3,
        ),
      ],
    );
  }
}
