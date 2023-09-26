import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  // Membre de classe label
  String label;

  // Constructeur
  FooterButton(this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(this.label, textAlign: TextAlign.center,));
  }
}

class FooterComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        FooterButton("Fil"),
        FooterButton("Notification"),
        FooterButton("Message"),
        FooterButton("Moi"),
      ],),
    ),);
  }

}