import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Basket/Basket.dart';

import 'bottom_navigation_view.dart';

class Product {
  final String name;
  final String image;
  final double rating;
  final double price;
  final double discount;
  final String description;

  Product({
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
    required this.discount,
    required this.description,
  });
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedTabIndex = 0;

  final List<Map<String, dynamic>> tabItems = [
    {
      'text': 'Tab 1',
      'image': 'https://picsum.photos/id/237/200/300',
    },
    {
      'text': 'Tab 2',
      'image': 'https://picsum.photos/id/237/200/300',
    },
    {
      'text': 'Tab 3',
      'image': 'https://picsum.photos/200/300',
    },
    {
      'text': 'Tab 4',
      'image': 'https://picsum.photos/200/300',
    },
  ];

  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'image': 'https://picsum.photos/200',
      'size': '1kg',
      'price': "200"
    },
    {
      'name': 'Product 2',
      'image': 'https://picsum.photos/201',
      'size': '500ML',
      'price': "200"
    },
    {
      'name': 'Product 3',
      'image': 'https://picsum.photos/202',
      'size': '2kg',
      'price': "200"
    },
  ];
  final List<String> imageList = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    // Add your image URLs or file paths here
  ];
  final int _quantity = 1;
  bool _isGridView = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationView()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Grocery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Handle search button press here
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
        body: Row(
          children: [
            Container(
              width: 100,
              color: Colors.white,
              child: ListView.builder(
                itemCount: tabItems.length,
                itemBuilder: (context, index) {
                  final item = tabItems[index];
                  final isSelected = index == _selectedTabIndex;

                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedTabIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      color: isSelected ? Colors.lightGreen[200] : Colors.white,
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.network(item['image'],
                                width: 80, height: 80, fit: BoxFit.cover),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['text'],
                            style: TextStyle(
                              color:
                                  isSelected ? Colors.black : Colors.grey[500],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Vegetables',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.grid_on,
                              color: _isGridView ? Colors.black : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _isGridView = true;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.view_list,
                              color: _isGridView ? Colors.grey : Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isGridView = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: CarouselSlider(
                      items: imageList.map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the radius as needed
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                // Match the radius with the container
                                child: Image.network(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: _isGridView
                        ? GridViewWidget(products)
                        : ListViewWidget(products),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Basket()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pinkAccent),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              '1 Item | ₹ 90',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const Text('view Cart',
                                  style: TextStyle(color: Colors.white))),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_bag))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  gothomepage() {
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageview()));
    Navigator.pop(context);
  }
}

class ListViewWidget extends StatefulWidget {
  final List<Map<String, dynamic>> products;

  const ListViewWidget(this.products, {super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final List<Product> item = [
    Product(
      name: 'Product 1',
      image: 'https://picsum.photos/200/300',
      rating: 4.5,
      price: 25.0,
      discount: 10.0,
      description: 'Description of Product 1',
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          builder: (BuildContext context) {
            return ProductDetailsSheet(
                item[0]); // Show details for the first product
          },
        );
      },
      child: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    product['image'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name'],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Size: ${product['size']}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                        'price: ${product['price']}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 40,
                      child: IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () {
                          // Handle calendar button press here
                        },
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              // Handle quantity decrease here
                            },
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(color: Colors.black),
                        ),
                        // Quantity
                        SizedBox(
                          width: 40,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Handle quantity increase here
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  GridViewWidget(this.products, {super.key});

  final List<Product> item = [
    Product(
      name: 'Product 1',
      image: 'https://picsum.photos/200/300',
      rating: 4.5,
      price: 25.0,
      discount: 10.0,
      description: 'Description of Product 1',
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.650, // Adjust the aspect ratio for taller items
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (BuildContext context) {
                return ProductDetailsSheet(
                    item[0]); // Show details for the first product
              },
            );
          },
          child: Card(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // Handle favorite button press here
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, bottom: 12),
                      child: Container(
                        height: 30,
                        width: 50,
                        color: Colors.red[100],
                        // Set the background color to light red
                        child: const Center(
                          child: Text(
                            "16%",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        product['image'],
                        width: 80,
                        height: 80, // Increase the height of the image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      product['size'],
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      product['name'],
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      product['price'],
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          // Handle calendar button press here
                        },
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              // Handle quantity decrease here
                            },
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(color: Colors.black),
                        ),
                        // Quantity
                        SizedBox(
                          width: 40,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Handle quantity increase here
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProductDetailsSheet extends StatelessWidget {
  final Product item;

  const ProductDetailsSheet(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * 0.980, // Set the desired height
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Handle favorite button press
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Image.network(
                item.image,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                item.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    '${item.rating}',
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                '\$${item.price.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 8.0),
              Text(
                '${item.discount}% off',
                style: const TextStyle(color: Colors.green),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Description:',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Apple Mountain works as a seller for many apple growers of apple. apple are easy to spot in your produce aisle. They are just like regular apple, but they will usually have a few more scars on ",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      // Handle quantity decrease
                    },
                  ),
                  const Text(
                    '1',
                    style: TextStyle(color: Colors.black),
                  ), // Quantity
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      // Handle quantity increase
                    },
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Basket()));
                    },
                    child: Container(
                      width: 120.0, // Adjust the size as needed
                      height: 60.0, // Adjust the size as needed
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors
                                .black, // You can change the text color as needed
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
