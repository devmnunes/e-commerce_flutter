import 'package:e_commerce/pages/products_overview_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          secondary: Colors.deepOrange,
        ),
        appBarTheme: AppBarTheme(titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      fontFamily: 'Lato',
      ),
      home: ProductsOverviewPage(),
    );
  }
}


