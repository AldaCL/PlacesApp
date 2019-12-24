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
          pathImage: "assets/img/profile.jpg",
          comment:"Los chilaquiles de ron Data no rifan",
          details: "3 likes, 4 Reviews",
          name: "Aldair C.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile.jpg",
          comment:"Los chilaquiles de ron Data rifan",
          details: "3 likes, 4 Reviews",
          name: "Aldair C.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile.jpg",
          comment:"Los chilaquiles de ron Data rifan",
          details: "3 likes, 4 Reviews",
          name: "Aldair C.",
          number_stars: 3,
        ),
        Review(
          pathImage: "assets/img/profile.jpg",
          comment:"Los chilaquiles de ron Data rifan",
          details: "3 likes, 4 Reviews",
          name: "Aldair C.",
          number_stars: 3,
        ),
      ],
    );
  }
}
