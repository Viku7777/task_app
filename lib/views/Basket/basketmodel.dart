import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final ProductData product;

  // Constructor
  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
        radius: 30,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.productName,
            style: const TextStyle(color: Colors.black),
          ),
          const Text(
            '1kg,6',
            style: TextStyle(color: Colors.red),
          ),
          const Row(
            children: [
              Text(
                'MRP: ₹60 ',
                style: TextStyle(
                    color: Colors.grey, decoration: TextDecoration.lineThrough),
              ),
              Text(
                '₹20 off',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              // Handle decrease quantity button tap
              // You can implement the logic to decrease the quantity here
            },
          ),
          Text(
            '${product.quantity}',
            style: const TextStyle(color: Colors.black),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Handle increase quantity button tap
              // You can implement the logic to increase the quantity here
            },
          ),
        ],
      ),
    );
  }
}


class ProductData {
  final String imageUrl;
  final String productName;
  final double price;
  final String size;
  final int quantity;

  ProductData({
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.size,
    required this.quantity,
  });
}
