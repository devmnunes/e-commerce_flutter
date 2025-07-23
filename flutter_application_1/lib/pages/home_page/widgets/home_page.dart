import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/consts_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset( ConstsApp.blackPokeball),
        ],
      ),
    );
  }
}