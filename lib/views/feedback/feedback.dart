import 'package:flutter/material.dart';

import '../menu/menu_screen.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  var _selectedRating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Rating & Review',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send your feedback',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tell us your honest feedback to help us improve',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              height: 150,
              child: TextField(
                // controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your feedback',
                ),
                maxLines: 10, // Allows multiple lines of text
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(
                    12.0), // Add a black border to the container
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rate Us',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        final rating = index + 1;
                        return Column(
                          children: [
                            Row(
                              children: [
                                Radio<int>(
                                  value: rating,
                                  groupValue: _selectedRating,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedRating = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              ' $rating', // Counting label
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Customer Review',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
            ),
            Container(child: Image.asset('assets/img_30.png')),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuScreenView()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Color(0xFF0091BE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'SUMBIT FEEDBACK',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
