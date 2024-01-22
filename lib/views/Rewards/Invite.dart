import 'package:flutter/material.dart';

class Invite extends StatefulWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  State<Invite> createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Invite'),
          backgroundColor: Color(0xFF8E97FD),

          elevation: 0, // Appbar background color
        ),
        backgroundColor: Color(0xFF8E97FD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset('assets/img_22.png')),
              Container(
                margin: EdgeInsets.only(top: 50,left: 20,right: 20),
                padding: EdgeInsets.all(16.0),
                // Optional padding for the container
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(
                      8.0), // Optional border radius for rounded corners
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.card_giftcard, // Coupon icon
                      color: Colors.black, // Icon color
                    ),
                    SizedBox(width: 8.0),
                    // Space between the icon and text
                    Text(
                      'Coupon',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    // Space between text and "ovdtg50%" text
                    Text(
                      'ovdtg50%',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    // Pushes the copy icon to the right edge of the container
                    Icon(
                      Icons.content_copy, // Copy icon
                      color: Colors.black, // Icon color
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
