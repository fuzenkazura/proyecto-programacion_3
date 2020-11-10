import 'package:flutter/material.dart';
import 'package:proyecto_app/review.dart';

import 'description_place.dart';


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final descriptionPlace = Container(
      margin: EdgeInsets.only(
       top: 230,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("uyuni", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );

    final review = Container(
      margin: EdgeInsets.only(
          top: 330,
          left: 20,
          right: 20
      ),
      height: 60,
      child: Review("assets/images/persona11.jpg", "Henry Cavill", "2 Review - 6 photos", 3, "buen lugar")
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(
              'My places'
          ),
        ),
        body: Stack(
          children: <Widget>[
          review
          ],
        )
    );

  }

  }
