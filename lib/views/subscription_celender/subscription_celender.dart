import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/subscription_celender/subscritptionviewmodal.dart';

class SubscriptionCelenderView extends StatefulWidget {
  const SubscriptionCelenderView({Key? key}) : super(key: key);

  @override
  State<SubscriptionCelenderView> createState() =>
      _SubscriptionCalendarViewState();
}

class _SubscriptionCalendarViewState extends State<SubscriptionCelenderView> {
  int _selectedIndex = 0;
  final List<String> _tabs = ["My Subscription", "Explore"];
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

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color.fromARGB(255, 52, 150, 231)),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
        ),
        title: const Text(
          "Subscription Calendar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ksearch(height, width),
              ksizebox(height),
              kadditem(height, width),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 25.0,
                child: ListView.builder(
                  itemCount: _tabs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _selectedIndex == index
                                  ? Colors.deepPurpleAccent
                                  : Colors.transparent,
                              width: 3.0,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          _tabs[index],
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? Colors.deepPurpleAccent // Selected text color
                                : Colors.black, // Unselected text color
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (_selectedIndex ==
                  0) // Conditionally show the inner ListView.builder
                SingleChildScrollView(
                  // Fixed height for the inner ListView.builder
                  child: Container(
                    height: 1000,
                    child: ListView.builder(
                      itemCount: 1, // Number of times to repeat the container
                      itemBuilder: (BuildContext context, int index) {
                        return CustomContainer(); // Use the custom container widget
                      },
                    ),
                  ),
                ),
              if (_selectedIndex == 1)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Scroll horizontally
                  child: Row(
                    children: [
                      for (final product in products)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProductCard(
                            imageUrl: product['image'],
                            name: product['name'],
                            price: product['price'],
                            size: product['size'],
                          ),
                        ),
                    ],
                  ),
                ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Scroll horizontally
                child: Row(
                  children: [
                    for (final product in products)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductCard(
                          imageUrl: product['image'],
                          name: product['name'],
                          price: product['price'],
                          size: product['size'],
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ksizebox(h) {
    return SizedBox(height: h * 0.01);
  }

  kadditem(h, w) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff07FCFC)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/additem.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Add Items on subscription &",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "Save up to 10% on your ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "daily essentials",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Choose from 100+ daily needs that",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "you can subscribe to",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff9F43E8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "View Store",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }

  ksearch(h, w) {
    return Container(
      height: h * 0.065,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Search Product Here",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
