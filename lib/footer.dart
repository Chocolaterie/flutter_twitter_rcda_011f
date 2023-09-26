import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Padding(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        Expanded(child: Text("Fil", textAlign: TextAlign.center,)),
        Expanded(child: Text("Notification", textAlign: TextAlign.center,)),
        Expanded(child: Text("Messages", textAlign: TextAlign.center,)),
        Expanded(child: Text("Moi", textAlign: TextAlign.center,)),
      ],),
    ),);
  }

}