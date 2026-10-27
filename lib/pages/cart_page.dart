import 'package:flutter/material.dart';
import '../data/cart_manager.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // Sepetteki ürünlerin toplam fiyatını hesapla
    double totalPrice = 0;
    for (var item in CartManager.cartItems) {
      totalPrice += item.price;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepetim'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // Eğer sepet boşsa ortada mesaj göster, doluysa listeyi göster
      body: CartManager.cartItems.isEmpty
          ? const Center(
              child: Text(
                'Sepetiniz şu an boş.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: CartManager.cartItems.length,
                    itemBuilder: (context, index) {
                      final product = CartManager.cartItems[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: ListTile(
                          leading: const Icon(Icons.shopping_bag),
                          title: Text(product.name),
                          subtitle: Text('${product.price} ₺'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              // Ürünü sil ve ekranı güncelle
                              setState(() {
                                CartManager.cartItems.removeAt(index);
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Toplam Fiyat Alanı
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Toplam:',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$totalPrice ₺',
                        style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}