import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(product.imageUrl,
        fit: BoxFit.cover,),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {} ,
          ),
          title: Text(product.title,
          textAlign: TextAlign.center,
          ),
          trailing: IconButton(onPressed:() {
      
          },
          icon: Icon(Icons.shopping_cart),
          color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        ),
    );
  }
}
