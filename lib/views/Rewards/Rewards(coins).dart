import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Coins'),
          backgroundColor: Color(0xFF8E97FD),
          actions: [
            Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                child: Image.asset('assets/img_25.png'))
          ],
          elevation: 0, // Appbar background color
        ),
        backgroundColor: Color(0xFF8E97FD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Membership Subscribe',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Image.asset('assets/img_23.png')),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'Coins',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Mulish'),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Image.asset('assets/img_24.png'))
            ],
          ),
        ));
  }
}
