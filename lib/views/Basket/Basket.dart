import 'package:flutter/material.dart';

import '../wallet/wallet_history.dart';
import 'basketmodel.dart';

class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> with TickerProviderStateMixin {
  late TabController _tabController;

  // Define your tabs and their names
  final List<String> _tabs = ["Tomorrow's Order", "Rest of the Month"];
  final List<Map<String, dynamic>> products = [
    {
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
      'name': 'Product 3',
      'size': 'S',
      'price': '999',
    },
    {
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
      'name': 'Product 3',
      'size': 'S',
      'price': '999',
    },
    {
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
      'name': 'Product 3',
      'size': 'S',
      'price': '999',
    },
    {
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
      'name': 'Product 3',
      'size': 'S',
      'price': '999',
    },
    {
      'image':
          'https://thumbs.dreamstime.com/b/pineapple-slices-isolated-white-30985039.jpg',
      'name': 'Product 3',
      'size': 'S',
      'price': '999',
    },
  ];

  // Define product data for each tab
  final List<List<ProductData>> _productData = [
    [
      ProductData(
        imageUrl: 'https://picsum.photos/200',
        productName: 'Product 1',
        price: 19.99,
        size: 'M',
        quantity: 2,
      ),
      ProductData(
        imageUrl: 'https://picsum.photos/200',
        productName: 'Product 2',
        price: 29.99,
        size: 'L',
        quantity: 1,
      ),
      ProductData(
        imageUrl: 'https://picsum.photos/200',
        productName: 'Product 2',
        price: 29.99,
        size: 'L',
        quantity: 1,
      ),
      ProductData(
        imageUrl: 'https://picsum.photos/200',
        productName: 'Product 2',
        price: 29.99,
        size: 'L',
        quantity: 1,
      ),
    ],
    [], // Add product data for the second tab here
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update the UI when the tab changes
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          'My Basket',
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
                              builder: (context) => TransactionView()));
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
        bottom: TabBar(
          tabs: _tabs.map((String tab) {
            return Tab(
              text: tab,
            );
          }).toList(),
          controller: _tabController,
          labelColor: Colors.cyan,
          unselectedLabelColor: Colors.purple,
          // Set unselected tab text color to purple
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3.0, // Width of the indicator line
              color: Colors.cyan, // Color of the indicator line
            ),
            insets:
                EdgeInsets.symmetric(horizontal: 20.0), // Adjust the padding
          ),
          onTap: (index) {
            _tabController.animateTo(index); // Animate to the selected tab
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabs.asMap().entries.map((entry) {
                final tabIndex = entry.key;
                final tabLabel = entry.value;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      if (tabIndex == 0)
                        Column(
                          children: [
                            Container(
                              height: 300,
                              child: SizedBox(
                                child: ListView.builder(
                                  itemCount: _productData[tabIndex].length,
                                  itemBuilder: (context, index) {
                                    final product =
                                        _productData[tabIndex][index];
                                    return ProductTile(product: product);
                                  },
                                ),
                              ),
                            ),
                            if (tabIndex == 0)
                              Container(
                                color: Colors.cyan,
                                height: 270,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    final product = products[index];
                                    return Container(
                                        width: 200,
                                        // Specify a fixed width here
                                        child: Card(
                                          elevation: 3,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                  child: Stack(
                                                children: [
                                                  Image.network(
                                                    product['image'],
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
                                                              color: Colors
                                                                  .red[100],
                                                              child:
                                                                  const Center(
                                                                child: Text(
                                                                  "16%",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Spacer(),
                                                          Container(
                                                            child: IconButton(
                                                              icon: const Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              onPressed: () {},
                                                            ),
                                                          )
                                                        ],
                                                      ))),
                                                  Center(
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 140),
                                                      height: 50,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            product['name'],
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            product['price'],
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            product['size'],
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                              Container(
                                                  color: Colors.white,
                                                  // Outer Container: White background
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 140),
                                                        height: 50,
                                                        width: double.infinity,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Container(
                                                          height: 30,
                                                          width: 30,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            color: Colors
                                                                .green, // Makes the container circular
                                                          ),
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(Icons
                                                                .add_shopping_cart),
                                                            color: Colors
                                                                .white, // You can set the icon color here
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned.fill(
                                                          child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 15),
                                                        child: const Text(
                                                          '-----------------------------',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      )),
                                                      Center(
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 22),
                                                          child: TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                'Add to Cart',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .green),
                                                              )),
                                                        ),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ));
                                  },
                                ),
                              ),
                            if (tabIndex == 0)
                              Container(
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        child: const Center(
                                            child: Text(
                                          '----------------------------  Bill Details  ----------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                      Container(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Sub-Total',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 240),
                                            child: const Text(
                                              '\$80.00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      )),
                                      Container(
                                        child: const Center(
                                            child: Text(
                                          '----------------------------------------------------------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Delivery Fees',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          const Spacer(),
                                          // This widget will push the text to the right
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: const Text(
                                              '\$20.00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: const Text(
                                          'Add items worth ₹500.00 more to get free delivery',
                                          style: TextStyle(color: Colors.grey),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: const Text(
                                              'Get free delivery with membership',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: const Text(
                                              'Add Membership',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: const Center(
                                            child: Text(
                                          '----------------------------------------------------------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                      Container(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'GST 18 %',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 240),
                                            child: const Text(
                                              '\$10.00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      )),
                                      Container(
                                        child: const Center(
                                            child: Text(
                                          '----------------------------------------------------------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                      Container(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Packing Charges',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: const Text(
                                              '\$10.00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      )),
                                      Container(
                                        child: const Center(
                                            child: Text(
                                          '----------------------------------------------------------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                      Container(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Total Amount',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: const Text(
                                              '\$120.00',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      )),
                                      Container(
                                        child: const Center(
                                            child: Text(
                                          '----------------------------------------------------------------------------',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                      ),
                                    ],
                                  )),
                          ],
                        ),
                      if (tabIndex == 1)
                        SingleChildScrollView(
                          child: SizedBox(
                            height: MediaQuery.of(context)
                                .size
                                .height, // Adjust the height as needed
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 5, left: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: Text(
                                        'Monday, 01 Jul 2023',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 25),
                                      height: 320,
                                      child: ListView.builder(
                                        itemCount: _productData.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          print(_productData.length);
                                          List<ProductData> productDataList =
                                              _productData[index];
                                          return Column(
                                            children: productDataList
                                                .map((productData) {
                                              return ProductTile(
                                                product: productData,
                                              );
                                            }).toList(),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Container(
                                        child: Text(
                                          'Tuesday, 02 Jul 2023',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 320,
                                      child: ListView.builder(
                                        itemCount: _productData.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          print(_productData.length);
                                          List<ProductData> productDataList =
                                              _productData[index];
                                          return Column(
                                            children: productDataList
                                                .map((productData) {
                                              return ProductTile(
                                                product: productData,
                                              );
                                            }).toList(),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Container(
                                        child: Text(
                                          'Wednesday, 03 Jul 2023',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
