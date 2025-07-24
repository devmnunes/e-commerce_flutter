import 'package:e_commerce/components/product_item.dart';
import 'package:e_commerce/data/dummy_data.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadProducts = dummyProducts;
  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minha Loja')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
          ),
          itemCount: loadProducts.length,
          itemBuilder: (ctx, i) => ProductItem(product: loadProducts[i]),
        ),
      ),
    );
  }
}
