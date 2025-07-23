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
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 29, right: 14),
                                child: IconButton(icon: Icon(Icons.menu),
                                onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Pokedex'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  height: 150,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
