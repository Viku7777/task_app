import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/Quality/qualityissues.dart';
import 'package:mr_ambarisha_frontend_new/views/Returnrequest/returnrequest.dart';
import 'package:mr_ambarisha_frontend_new/views/Wrongitem/wrongitem.dart';
import 'package:mr_ambarisha_frontend_new/views/contactus/contactus.dart';
import 'package:mr_ambarisha_frontend_new/views/openandcloseticket/openandcloseticket.dart';
import 'package:mr_ambarisha_frontend_new/views/partialorder/partial%20delivery.dart';

class needhelp extends StatefulWidget {
  const needhelp({Key? key}) : super(key: key);

  @override
  State<needhelp> createState() => _needhelpState();
}

class _needhelpState extends State<needhelp> {
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
          'Need Help ?',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Raise Issue with Today orders',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.headset_mic),
                          onPressed: () {
                            // Add your phone action here
                          },
                        ),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactus()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Contact With US',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.headset_mic),
                          onPressed: () {
                            // Add your phone action here
                          },
                        ),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TicketPage()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Open and Closed Ticket',
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
              onTap: () {
                _downloadinvoice(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Statmenet(Invoice)',
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
              onTap: () {
                _downloadstatement(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Download Statement',
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
                          'What Up Notification',
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
                    title: Row(
                      children: [
                        Icon(Icons.wb_sunny), // Add the sun icon
                        SizedBox(width: 10), // Add some spacing
                        Text(
                          'Email Notofication',
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
                    title: Row(
                      children: [
                        Icon(Icons.wb_sunny), // Add the sun icon
                        SizedBox(width: 10), // Add some spacing
                        Text(
                          'SMS Notofication',
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
          ],
        ),
      ),
    );
  }
}

void _showFirstDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Sorry for Inconvience',
          style: TextStyle(color: Colors.black),
        ),
        content: Text(' If you not received order, CLick yes to Submit?',
            style: TextStyle(color: Colors.black)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the first dialog
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the first dialog
              _showSecondDialog(context); // Show the second dialog
            },
            child: Text('Yes'),
          ),
        ],
      );
    },
  );
}

void _showSecondDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the second dialog
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Successfully Submitted',
                  style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  Text('Ticket ID:0011', style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Your Issue Will be resolve next 24 Hours',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                _showFirstDialog(context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Order not Deliverd',
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => partialdelivery()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Partial Delivery',
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => qualityissues()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      "Quality Issues",
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => wrongitem()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Wrong Items deliverd',
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => returnrequest()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Return Request',
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
          ],
        ),
      );
    },
  );
}

void _downloadinvoice(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Download Invoice',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Invoice Download',
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
            Text(
              'Note : Available 3 Months data',
              style: TextStyle(color: Colors.black),
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
                      'Order 01',
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
                      "Order 02",
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
                      'Order 03',
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
          ],
        ),
      );
    },
  );
}

void _downloadstatement(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Download Statement',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Download Statement',
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
                      'Febury 2023',
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
                      "March 2023",
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
                      'June 2023',
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
          ],
        ),
      );
    },
  );
}
