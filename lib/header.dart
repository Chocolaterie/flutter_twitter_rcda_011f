import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, child:
    Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        Expanded(child: Text("Nouveau", style: TextStyle(color: Colors.white),)),
        Expanded(child: Text("Accueil", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
        Expanded(child: Text("Rechercher", textAlign: TextAlign.right, style: TextStyle(color: Colors.white))),
      ],),
    ),);
  }

}