import 'package:flutter/material.dart';

import 'description_place.dart';


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final descriptionPlace = Container(
      margin: EdgeInsets.only(
       top: 100,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("uyuni", 4, "fdshjkfkbwejkbwe wjkvbwkbwjknjkwfjk fwjkbbkwvwjkn jkwvnwjknkw"),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'My places'
          ),
        ),
        body: Stack(
          children: <Widget>[
          descriptionPlace
          ],
        )
    );

  }

  }
