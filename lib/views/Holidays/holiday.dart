import 'package:flutter/material.dart';

import 'hoildayCalender.dart';


class holiday extends StatefulWidget {
  const holiday({Key? key}) : super(key: key);

  @override
  State<holiday> createState() => _holidayState();
}

class _holidayState extends State<holiday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Holiday',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, // Use the back arrow icon for the back button
            color: Colors.black, // Set icon color to black
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigate back when the button is pressed
          },
        ),
        actions: <Widget>[],
        backgroundColor: Colors.white,
        elevation: 0, // Set the background color of the AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/img_2.png'),
            Container(
              margin: EdgeInsets.only(right: 120, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => hoildayCalender()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  // Set background color to white
                  minimumSize: Size(160, 48),
                  // Set button width and height
                  side: BorderSide(
                    color: Colors.lightBlueAccent, // Set border color
                  ),
                  elevation: 0,
                  // Set elevation to 0
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Set border radius
                  ),
                ),
                child: Text(
                  'Add Holiday',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors
                        .lightBlueAccent, // Set text color to lightBlueAccent
                  ),
                ),
              ),
            ),
            Image.asset('assets/img_3.png')
          ],
        ),
      ),
    );
  }
}
