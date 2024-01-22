import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String size;

  ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40), // Circular borders
      child: Container(
        width: 150, // Adjust the width as needed
        child: Card(
          elevation: 3,
          child: Column(
            children: [
              ClipRRect(
                child: Stack(
                  children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 200,
                      height: 120, // Adjust the image height as needed
                    ),
                    Container(
                      height: 25, // Adjust the height as needed
                      width: double.infinity,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                height: 20, // Adjust the height as needed
                                width: 40, // Adjust the width as needed
                                color: Colors.red[100],
                                child: const Center(
                                  child: Text(
                                    "16%",
                                    style: TextStyle(color: Colors.black),
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
                        margin: const EdgeInsets.only(top: 80),
                        // Adjust the margin as needed
                        height: 60,
                        // Adjust the height as needed
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 15, // Adjust the font size as needed
                              ),
                            ),
                            Text(
                              price,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13, // Adjust the font size as needed
                              ),
                            ),
                            Text(
                              size,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 11, // Adjust the font size as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 90),
                      // Adjust the padding as needed
                      height: 30,
                      // Adjust the height as needed
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_today,
                            color: Colors.blue),
                        color: Colors.white,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        padding: const EdgeInsets.only(top: 5),
                        // Adjust the padding as needed
                        child: const Text(
                          '---------------------',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        // Adjust the margin as needed
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Subscribe Now',
                            style: TextStyle(color: Colors.green, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      margin: EdgeInsets.only(top: 10),
      height: 232,
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "50% OFF",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Image.network(
                        'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg'), // Replace with your image or widget
                    // Replace the color with an Image widget or any other widget
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Product Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Quantity: M", // Replace with the actual size
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Price: \$20.00",
                        // Replace with the actual price
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // New content at the bottom
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              color: Colors.pink[50],
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "My Plan",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 50),
                      Text("Daily", style: TextStyle(color: Colors.black)),
                      Spacer(),
                      Text(
                        "Startdate: 01 June 23",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 110,
                        height: 80,
                        child: const Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                        ),
                      ),
                      const Text(
                        ":",
                        style: TextStyle(color: Colors.black, fontSize: 50),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 110,
                        height: 80,
                        child: const Center(
                          child: Text(
                            '01',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        color: Colors.grey[200],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.pause_circle_outline,
                                        ),
                                      ),
                                      const Text(
                                        "Pause",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.delete),
                                      ),
                                      const Text(
                                        "Delete",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '1',
                                  style: TextStyle(color: Colors.black),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
