import 'package:flutter/material.dart';
import 'package:proyecto_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final reviewList = Column(

      children: <Widget>[
        Review("assets/images/persona11.jpg", "Henry Cavill", "2 Review - 6 photos", 3, "buen lugar"),
        Review("assets/images/persona22.jpg", "MAria Bonita", "5 Review - 2 photos", 4, "exelente lugar para visitar"),
        Review("assets/images/persona33.jpg", "Carla Vallejos", "1 Review - 3 photos", 2, "Esta bien para conocer"),
        Review("assets/images/persona44.jpg", "Linda Claros", "3 Review - 2 photos", 3, "Desearia conocer"),
        Review("assets/images/persona55.jpg", "Walter Cosio ", "2 Review - 1 photos", 5, "Recomendado para visitar")


      ],
    );

    return reviewList;
  }

}