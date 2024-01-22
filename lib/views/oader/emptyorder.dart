import 'package:flutter/material.dart';

import 'orderhistory.dart';

class emptyorder extends StatefulWidget {
  const emptyorder({Key? key}) : super(key: key);

  @override
  State<emptyorder> createState() => _emptyorderState();
}

class _emptyorderState extends State<emptyorder> {
  final List<Map<String, String>> products = [
    {
      'name': 'Product 1',
      'price': '\$10',
      'size': 'Large',
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
    },
    {
      'name': 'Product 2',
      'price': '\$20',
      'size': 'Medium',
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
    },
    {
      'name': 'Product 3',
      'price': '\$30',
      'size': 'Small',
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: const Text(
          'Order History',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 20,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      "₹0.00",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 240,
                    child: Image.asset('assets/img_8.png')),

              ],
            ),
            Container(
              width: 300,
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/img_12.png')),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.asset('assets/img_9.png')),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.cyan,
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(product: product);
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset('assets/img_10.png')),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.asset('assets/img_11.png')),
          ],
        ),
      ),
    );
  }
}
