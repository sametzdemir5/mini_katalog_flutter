import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/cart_manager.dart'; // Sepet yöneticisini ekledik

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag, size: 120, color: Colors.blue),
            const SizedBox(height: 24),
            Text(
              product.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              '${product.price} ₺',
              style: const TextStyle(fontSize: 24, color: Colors.green),
            ),
            const SizedBox(height: 32),
            
            // Sepete Ekle Butonu
            ElevatedButton.icon(
              onPressed: () {
                // Ürünü sepete ekle
                CartManager.cartItems.add(product);
                
                // Kullanıcıya bilgi mesajı göster (SnackBar)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product.name} sepete eklendi!'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text('Sepete Ekle'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 