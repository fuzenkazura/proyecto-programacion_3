import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  String path;

  CardImage(this.path);

  @override
  Widget build(BuildContext context) {
    final cardImage = Padding(
      padding: EdgeInsets.only(
        top: 90,
            bottom: 30,
          right: 15
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  path,
                ),
                fit: BoxFit.cover
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            boxShadow: <BoxShadow> [
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 15,
                  offset: Offset(0, 10)
              )
            ]
        ),
      ),
    );

    return cardImage;
  }

}