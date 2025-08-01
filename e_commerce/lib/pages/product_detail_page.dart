import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        iconTheme: 
        IconThemeData(
          color: Colors.white,
        ),
        title: Text(product.title),
      ),
    );
  }
}