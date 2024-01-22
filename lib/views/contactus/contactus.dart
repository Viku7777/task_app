import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/chatassitance/chatassistance.dart';

class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Contact us',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'Tell us how we can Help',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 24),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                  child: Text(
                    'Our crew members are standing by service & support',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
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
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone call',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Call us',
                              // Add the text you want to display below "Phone call"
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '+919456415214',
                              // Add the text you want to display below "Phone call"
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                            ),
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
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Get solutions beamed to your inbox',
                              // Add the text you want to display below "Phone call"
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'support@name.in',
                              // Add the text you want to display below "Phone call"
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                            ),
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
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Whatspp chat',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Start a conversion on whatsapp now!',
                              // Add the text you want to display below "Phone call"
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '+91944154102540',
                              // Add the text you want to display below "Phone call"
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                            ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => chatassistance()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Chat Assistance',
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 14),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.chat_bubble_outlined,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Super Speed Assistance',
                              // Add the text you want to display below "Phone call"
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '',
                              // Add the text you want to display below "Phone call"
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                            ),
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
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Give us a Feedback',
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 14),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.face_rounded,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '',
                              // Add the text you want to display below "Phone call"
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '',
                              // Add the text you want to display below "Phone call"
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                            ),
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
            ],
          ),
        ),
      ),
    );
  }
}
