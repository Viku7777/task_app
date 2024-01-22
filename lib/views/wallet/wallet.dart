import 'package:flutter/material.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
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
          'Wallet',
          style: TextStyle(color: Colors.black),
        ),
        actions: [],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Image.asset('assets/img_35.png')),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Proceed To Pay',
                        style: TextStyle(color: Colors.black, fontSize: 20),
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
          ],
        ),
      ),
    );
  }
}
