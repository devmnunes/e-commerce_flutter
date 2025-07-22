

import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia acesso API'),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(onPressed: () {

            }, child: Text('HTTP'))
          ],
        )),
    );
  
  }
}