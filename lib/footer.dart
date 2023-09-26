import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  // Membre de classe label
  String label;
  bool isActive;

  // Constructeur
  FooterButton(this.label, {this.isActive=false});

  Color getStateColor(){
      return this.isActive ? Color(0xFF58B0F0) : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(this.label, textAlign: TextAlign.center, style: TextStyle(color: getStateColor()),));
  }
}

class FooterComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        FooterButton("Fil", isActive: true,),
        FooterButton("Notification"),
        FooterButton("Message"),
        FooterButton("Moi"),
      ],),
    ),);
  }

}