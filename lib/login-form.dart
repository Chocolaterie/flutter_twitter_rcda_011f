import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  // Pour récuperer le formulaire
  final formKey = GlobalKey<FormState>();

  /**
   * Validateur champs email
   */
  String? emailValidator(String? value){
    // Erreur : Vide
    if (value!.isEmpty) {
      // message traduit
      return "Email vide";
    }

    // Erreur : 3 length
    if (value!.length < 4) {
      return "L'email doit au moins avoir 3 caractères";
    }

    // Errur si regex email invalide
    if (!RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value!)) {
      return "Format email invalide";
    }

    // Retour null aucune erreur
    return null;
  }

  /**
   * Validateur champs mot de passe
   */
  String? passwordValidator(String? value ){
    if (value!.length < 6){
      return "Le mot de passe doit contenir au moins 6 caractères";
    }
    return null;
  }

  void onSubmit(){
    // Enclancher la validation du formulaire
    if (formKey.currentState!.validate()){
      print("Formulaire valide");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(children: [
          // titre
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Connexion à Twitter"),
          ),
          // Email
          TextFormField(validator: emailValidator, decoration: InputDecoration(labelText: "Identifiant"),),
          // Mot de passe
          TextFormField(validator: passwordValidator, obscureText: true, decoration: InputDecoration(labelText: "Mot de passe"),),
          // Attention deux elements sur la même ligne
          Row(children: [
            Switch(value: false, onChanged: (value) {}),
            Text("Mémoriser mes informations")
          ],),
          // LE bouton
          SizedBox( width: double.infinity, child: ElevatedButton(onPressed: onSubmit, child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Connexion"),
          )))
        ],),
      ),
    );
  }

}