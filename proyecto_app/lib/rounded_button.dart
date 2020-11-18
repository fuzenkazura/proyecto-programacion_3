import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  String textoBoton;

  RoundedButton(this.textoBoton);

  @override
  Widget build(BuildContext context) {

    final roundedButton = InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 150,
        margin: EdgeInsets.only(
          top: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.deepPurpleAccent
            ],
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(1.0, 0.5),
            stops: [0.0, 0.5],
              tileMode: TileMode.clamp
          )
        ),
        child: Text(

            textoBoton,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white
          ),
        ),
      ),
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
          content: Text("Navegando"),
          )
        );
      },
    );

    return roundedButton;
  }

}