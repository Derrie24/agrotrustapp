import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'imageUrl': 'assets/sherman.jpg',
      'price': 29.99,
      'description': 'This is the description for product 1.'
    },
    {
      'name': 'Product 2',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': 19.99,
      'description': 'This is the description for product 2.'
    },
    {
      'name': 'Product 3',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': 49.99,
      'description': 'This is the description for product 3.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              leading: Image.network(
                product['imageUrl'],
                errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
              ),
              title: Text(product['name']),
              subtitle: Text(
                '${product['description']}\n\$${product['price'].toStringAsFixed(2)}',
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
