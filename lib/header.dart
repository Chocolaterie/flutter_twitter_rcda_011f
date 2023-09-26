import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, child:
    Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        Expanded(child: IconButton(onPressed: () {}, icon: Image.asset("images/pencil.png"),)),
        Expanded(child: Text("Accueil", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
        Expanded(child: IconButton(onPressed: () {}, icon: Image.asset("images/search.png"),)),
      ],),
    ),);
  }

}