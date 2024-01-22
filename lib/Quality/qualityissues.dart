import 'package:flutter/material.dart';

class qualityissues extends StatefulWidget {
  const qualityissues({Key? key}) : super(key: key);

  @override
  State<qualityissues> createState() => _qualityissuesState();
}

class _qualityissuesState extends State<qualityissues> {
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
          'Quality Issues',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.headset_mic,
                color: Colors.black,
              ))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/quality.png')),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/quality.png')),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/quality.png')),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/quality.png')),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: 100,
              child: TextField(
                // controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your issue here...',
                ),
                maxLines: 10, // Allows multiple lines of text
              ),
            ),
            SizedBox(height: 1),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Submit Issue'),
            ),
          ],
        ),
      ),
    );
  }
}
