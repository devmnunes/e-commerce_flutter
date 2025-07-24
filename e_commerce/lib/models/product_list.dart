import 'package:e_commerce/data/dummy_data.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductList with ChangeNotifier {
   List<Product> _items = dummyProducts;

   List<Product> get items {
     return [..._items];
   }

   void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
   }

  
   
  
}