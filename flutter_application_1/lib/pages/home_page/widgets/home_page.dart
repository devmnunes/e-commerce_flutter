import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/consts_app.dart';
import 'package:flutter_application_1/pages/home_page/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -200 / 4.7,
            right: -138 / 1.6,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                ConstsApp.blackPokeball,
                height: 240,
                width: 240,
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 28,
                ),
                AppBarHome(),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        ListTile(title: Text('Pokemon'),),
                  
                  
                  
                  
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
