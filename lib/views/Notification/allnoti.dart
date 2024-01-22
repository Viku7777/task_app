import 'package:flutter/material.dart';

class allnoti extends StatefulWidget {
  const allnoti({Key? key}) : super(key: key);

  @override
  State<allnoti> createState() => _allnotiState();
}

class _allnotiState extends State<allnoti> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
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
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              // Add some right padding
              child: Icon(
                Icons.more_vert,
                // Use the warning icon as an exclamation mark
                color: Colors.black, // Set icon color to black
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0, // Set the background color of the AppBar
        ),
        body: Center(
          child: Image.asset('assets/img_1.png'),
        ));
  }
}
