
import 'package:e_commerce/components/product_grid.dart';
import 'package:flutter/material.dart';


class ProductsOverviewPage extends StatelessWidget {
  
  ProductsOverviewPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Minha Loja')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ProductGrid(),
      ),
    );
  }
}


