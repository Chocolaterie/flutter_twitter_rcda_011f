import 'package:flutter/material.dart';
import 'package:tp_twitter/login-form.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: // Formulaire
      LoginForm(),
    );
  }

}