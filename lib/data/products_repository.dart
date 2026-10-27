import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product.dart';

class ProductsRepository {
  // İnternetten veya dosyadan veri okuma işlemi zaman alacağı için "Future" kullanırız.
  Future<List<Product>> loadProducts() async {
    // 1. JSON dosyasındaki metni oku
    final String response = await rootBundle.loadString('assets/products.json');
    // 2. Metni Dart'ın anlayacağı listeye (JSON formatına) çevir
    final List<dynamic> data = jsonDecode(response);
    // 3. Her bir JSON elemanını bizim Product modelimize dönüştür
    return data.map((json) => Product.fromJson(json)).toList();
  }
}