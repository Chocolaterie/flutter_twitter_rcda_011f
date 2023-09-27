import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        // titre
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Connexion à Twitter"),
        ),
        // Email
        TextFormField(decoration: InputDecoration(labelText: "Identifiant"),),
        // Mot de passe
        TextFormField(obscureText: true, decoration: InputDecoration(labelText: "Mot de passe"),),
        // Attention deux elements sur la même ligne
        Row(children: [
          Switch(value: false, onChanged: (value) {}),
          Text("Mémoriser mes informations")
        ],),
        // LE bouton
        SizedBox( width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Connexion"),
        )))
      ],),
    );
  }

}