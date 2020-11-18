import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathfoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;

  Review(this.pathfoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.textoComentario);

  @override
  Widget build(BuildContext context) {

    final foto = Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10
      ),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
              pathfoto
          ),
              fit: BoxFit.cover
        )
      ),
    );

    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textoResumenUsuario,
        style: TextStyle(
          fontFamily: "Montserrat",
          color: Colors.black54,
          fontSize: 12
        ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
    );
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
        size: 18,
      ),
    );
    List<Container> estrellas = new List();
    for(int i = 0; i < 5; i++){
      if(i < cantidadEstrellas){
        estrellas.add(estrella);
      } else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaestrellas = Row(
      children: estrellas,

    );

    final nombreUsuario = Container(
      child: Text(
        textoNombreUsuario,
            style: TextStyle(
          fontFamily: "Montserrat",
              fontSize: 20
      ),
      ),
    );

    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaestrellas
      ],
    );

    final comentario = Container(
      child: Text(
        textoComentario,
        style: TextStyle(
          fontFamily: "Montserrat",

        ),
      ),
    );

    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          nombreUsuario,
        filaResumen,
        comentario
      ],
    );

    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ],
    );

    return review;

  }
  
}