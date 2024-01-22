import 'package:flutter/material.dart';

import '../../Card/card.dart';
import 'emptyorder.dart';

class orderhistory extends StatefulWidget {
  const orderhistory({Key? key}) : super(key: key);

  @override
  State<orderhistory> createState() => _orderhistoryState();
}

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

class _orderhistoryState extends State<orderhistory> {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => card()));
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
                    child: Image.asset('assets/img_8.png'))
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
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

class ProductCard extends StatelessWidget {
  final Map<String, String> product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            ClipRRect(
              child: Stack(
                children: [
                  Image.network(
                    product['image']!,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 35,
                    width: double.infinity,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Container(
                              height: 30,
                              width: 50,
                              color: Colors.red[100],
                              child: const Center(
                                child: Text(
                                  "16%",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 140),
                      height: 50,
                      child: Column(
                        children: [
                          Text(
                            product['name']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            product['price']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            product['size']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 140),
                    height: 50,
                    width: double.infinity,
                    child: Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.green,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: const Text(
                        '-----------------------------',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 22),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
