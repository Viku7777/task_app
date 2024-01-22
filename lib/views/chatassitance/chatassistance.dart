import 'package:flutter/material.dart';

class chatassistance extends StatefulWidget {
  const chatassistance({Key? key}) : super(key: key);

  @override
  State<chatassistance> createState() => _chatassistanceState();
}

class _chatassistanceState extends State<chatassistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Chat with Us',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('How May i assist you today..?',style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Delivery Charges',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Member Ship Charged',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Order not delivery',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Query',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Issue with Today Order',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Refund',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'offer',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Wallet recharge',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.wb_sunny), // Add the sun icon
                        SizedBox(width: 10), // Add some spacing
                        Text(
                          'Clear all Data',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: Switch(
                      value: true, // Set the initial value of the switch
                      onChanged: (value) {
                        // Handle the switch state change here
                      },
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.wb_sunny), // Add the sun icon
                        SizedBox(width: 10), // Add some spacing
                        Text(
                          'Account Deactivation',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: Switch(
                      value: true, // Set the initial value of the switch
                      onChanged: (value) {
                        // Handle the switch state change here
                      },
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Rewards',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      "FAQ's",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {
                            // Add your arrow icon action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Image.asset('assets/img_19.png')
          ],
        ),
      ),
    );
  }
}
