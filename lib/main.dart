import 'package:alura_projeto/database/app_database.dart';
import 'package:alura_projeto/models/contact.dart';
import 'package:alura_projeto/screens/Dashboard.dart';
import 'package:alura_projeto/screens/contacts_form.dart';
import 'package:alura_projeto/screens/contacts_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
    );
  }
}
