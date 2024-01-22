import 'package:flutter/material.dart';

class hoildayCalender extends StatefulWidget {
  const hoildayCalender({Key? key}) : super(key: key);

  @override
  State<hoildayCalender> createState() => _hoildayCalenderState();
}

class _hoildayCalenderState extends State<hoildayCalender> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close_rounded, // Use the back arrow icon for the back button
            color: Colors.black, // Set icon color to black
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigate back when the button is pressed
          },
        ),
        actions: <Widget>[TextButton(onPressed: () {}, child: Text('clear'))],
        backgroundColor: Colors.white,
        elevation: 0, // Set the background color of the AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(30),
                child: Image.asset('assets/img_4.png')),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(160, 48),
                  primary: Color(0xFF0091BE), // Set background color to #0091BE
                  // Increase button width
                ),
                child: Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
