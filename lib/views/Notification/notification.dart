import 'package:flutter/material.dart';

import 'allnoti.dart';

class NotificationScreen extends StatelessWidget {
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
              Icons.notification_important,
              // Use the warning icon as an exclamation mark
              color: Colors.black, // Set icon color to black
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0, // Set the background color of the AppBar
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF86C649), // Set the custom color
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => allnoti()));
                  // Handle button 1 action
                },
                child: Text('All'),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Handle button 2 action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF86C649), // Set the custom color
                ),
                child: Text('Transaction'),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Handle button 3 action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF86C649), // Set the custom color
                ),
                child: Text('order related'),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset('assets/partialorder.png'))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationScreen(),
  ));
}
