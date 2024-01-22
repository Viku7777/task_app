import 'package:flutter/material.dart';

import '../../../Quality/qualityissues.dart';
import '../../Returnrequest/returnrequest.dart';
import '../../Wrongitem/wrongitem.dart';
import '../../contactus/contactus.dart';
import '../../openandcloseticket/openandcloseticket.dart';
import '../../partialorder/partial delivery.dart';

class HelpAndSuportView extends StatefulWidget {
  const HelpAndSuportView({super.key});

  @override
  State<HelpAndSuportView> createState() => _HelpAndSuportViewState();
}

class _HelpAndSuportViewState extends State<HelpAndSuportView> {
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
          'FAQ',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
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
                      'What is a Payment Gateway?',
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
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
                      'What platforms does Instapaty?',
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
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
                      'Does Instapay provide inter support?',
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
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
                      'Delivery',
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
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
                      'Subscription',
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
              },
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
                          Text(
                            'Recharge Wallet',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
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
                      )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
              },
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
                          Text(
                            'Holidays',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
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
                      )),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
              },
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
                        Text(
                          'Refer & Earn',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
              },
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
                          Text(
                            'Reward Point(Coins)',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
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
                      )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Does Instapay provide international payments support?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                          'Yes, Instapay provides support for International transactions. We support all major international cards and 92 currencies including USD, EUR, GBP, SGD, AED.',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('close'),
                        ),
                      ],
                    );
                  },
                );
              },
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
                          Text(
                            'Feed back',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
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
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



