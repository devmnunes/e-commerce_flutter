import 'package:e_commerce/components/product_item.dart';
import 'package:e_commerce/data/dummy_data.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/models/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsOverviewPage extends StatelessWidget {
  
  ProductsOverviewPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadProducts = provider.items;
    
    return Scaffold(
      appBar: AppBar(title: Text('Minha Loja')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
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
