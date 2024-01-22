import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Recycle/Vouchers.dart';

class voucher extends StatefulWidget {
  const voucher({Key? key}) : super(key: key);

  @override
  State<voucher> createState() => _voucherState();
}

class _voucherState extends State<voucher> {
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
          'Show Vocher',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.warning_amber_sharp,
                color: Colors.black,
              ))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'You Have No Active Voucher !!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Color(0xFF9BB6DF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Check back later for more Voucher',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vouchers()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Color(0xFFD3D71E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Voucher',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.arrow_forward_ios)],
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
