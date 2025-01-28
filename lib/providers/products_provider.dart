import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProductsList = [
  Product(
    id: '1',
    title: 'shorts',
    price: 20,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '2',
    title: 'shorts',
    price: 60,
    image: 'assets/products/karati.png',
  ),
  Product(
    id: '3',
    title: 'shorts',
    price: 55,
    image: 'assets/products/jeans.png',
  ),
  Product(
    id: '4',
    title: 'shorts',
    price: 10,
    image: 'assets/products/backpack.png',
  ),
  Product(
    id: '5',
    title: 'shorts',
    price: 100,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '6',
    title: 'shorts',
    price: 90,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '7',
    title: 'shorts',
    price: 58,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '8',
    title: 'shorts',
    price: 75,
    image: 'assets/products/shorts.png',
  ),
];

final allproductsProvider = Provider((ref) {
  return allProductsList;
});

final reducedProductsProvider = Provider((ref) {
  return allProductsList.where((p) => p.price <= 50).toList();
});