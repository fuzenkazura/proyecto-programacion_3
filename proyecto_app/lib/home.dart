import 'package:flutter/material.dart';
import 'package:proyecto_app/card_image.dart';
import 'package:proyecto_app/homeappbar.dart';
import 'package:proyecto_app/review.dart';
import 'package:proyecto_app/review_list.dart';

import 'description_place.dart';
import 'gradient_back.dart';


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final descriptionPlace = Container(
      margin: EdgeInsets.only(
       top: 290,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("toro", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
    );

    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
      ),

      child: ReviewList()
    );

    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList
      ],
    );

    return Scaffold(
        body: Stack(
          children: <Widget>[
            listView,
            HomeAppBar("Popular")
          ],
        )
    );

  }

  }
