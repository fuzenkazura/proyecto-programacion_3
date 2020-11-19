import 'package:flutter/material.dart';
import 'package:proyecto_app/home.dart';
import 'package:proyecto_app/profile_places.dart';
import 'package:proyecto_app/search_places.dart';

class PLaces extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Places();
  }

}
class _Places extends State<PLaces> {
  int currentIndex = 0;

  List<Widget> pantallas = <Widget> [
    MyHome(),
    SearchPlaces(),
    ProfilePlaces()
  ];

  void cambiarPantalla(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurpleAccent
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurpleAccent,
              ),
              title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text("")
            ),
          ],
          onTap: cambiarPantalla,
        ),
      ),
      body: pantallas[currentIndex],
    );
    return scaffold;
  }

}