import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final gradiente = Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:  [
            Colors.redAccent,
            Colors.deepPurpleAccent
          ],
          begin: FractionalOffset(1.0, 1.0),
          end: FractionalOffset(0.0, 0.0),
          stops: [0.2, 0.8],
          tileMode: TileMode.clamp
        )
      ),
    );

    return gradiente;
  }

}