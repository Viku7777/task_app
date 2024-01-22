import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Basket/Basket.dart';
import 'package:mr_ambarisha_frontend_new/views/subscription_celender/weekend.dart';

import 'alternativeday.dart';
import 'daily.dart';

class weekly extends StatefulWidget {
  const weekly({Key? key}) : super(key: key);

  @override
  State<weekly> createState() => _weeklyState();
}

class _weeklyState extends State<weekly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Weekly',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.question_mark_sharp,
            color: Colors.black,
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/img_31.png'),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Select Days(s) for Delivery',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(20), //padding of outer Container
                child: DottedBorder(
                    color: Colors.black, //color of dotted/dash line
                    strokeWidth: 3, //thickness of dash/dots
                    dashPattern: [10, 6],
                    //dash patterns, 10 is dash width, 6 is space width
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            // Horizontal scrolling
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'MON',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'TUE',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'WED',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'THU',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'FRI',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'SAT',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFF9747FF), // Button color
                                    elevation: 5.0, // Elevation
                                  ),
                                  child: Text(
                                    'SUN',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Quick's Selection",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 10),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => daily()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: Color(0xFF90ABEF), // Button color
                          elevation: 5.0, // Elevation
                        ),
                        child: Text(
                          'Daily',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      weekly())); // Add your button click logic here
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: Color(0xFF90ABEF), // Button color
                          elevation: 5.0, // Elevation
                        ),
                        child: Text(
                          'Weekly',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => weekend()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: Color(0xFF90ABEF), // Button color
                          elevation: 5.0, // Elevation
                        ),
                        child: Text(
                          'Weekends',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      alternativeday())); // Add your button click logic here
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: Color(0xFF90ABEF), // Button color
                          elevation: 5.0, // Elevation
                        ),
                        child: Text(
                          'Alternative days',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Image.asset('assets/img_33.png')),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 10,top: 20),
                child: Text('Select Start Date and End date',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold // Text color
                    )),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Image.asset('assets/img_32.png')),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Basket(),
                    ),
                  ); // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  // Set the width to 200 (or your desired width)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  primary: Color(0xFF00A3FF),
                  // Button color
                  elevation: 5.0, // Elevation
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
