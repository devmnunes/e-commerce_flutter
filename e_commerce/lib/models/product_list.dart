import 'package:e_commerce/data/dummy_data.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductList with ChangeNotifier {
   List<Product> _items = dummyProducts;
   bool _showFavoriteOnly = false;

   List<Product> get items {
    if (_showFavoriteOnly) {
      return _items.where((prod) => prod.isFavorite).toList();
    }
     return [..._items];
   }

   void showFavoriteOnly () {
    _showFavoriteOnly = true;
    notifyListeners();
   }

   void showAll () {
    _showFavoriteOnly = false;
    notifyListeners();
   }

   void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
   }
}