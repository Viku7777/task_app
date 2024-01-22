import 'package:flutter/material.dart';

class Vouchers extends StatefulWidget {
  const Vouchers({Key? key}) : super(key: key);

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
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
          ' Vouchers',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(top: 20, right: 5),
              child: Image.asset('assets/img_28.png'))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Total Cash back on your Voucher',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(

              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Image.asset('assets/img_29.png'))
          ],
        ),
      ),
    );
  }
}
