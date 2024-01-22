import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Recycle/showvoucher.dart';

class Recycleprocess extends StatefulWidget {
  const Recycleprocess({Key? key}) : super(key: key);

  @override
  State<Recycleprocess> createState() => _RecycleprocessState();
}

class _RecycleprocessState extends State<Recycleprocess> {
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
          'Recycle Process',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 10, right: 1),
                child: Image.asset('assets/img_27.png')),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Protect Mother Earth, Recycle for a Better India.',
                style: TextStyle(
                    color: Color(0xFF12823C),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                        'My Role',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
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
              onTap: () {},
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
                        'Step 1 : Request to Return Bags',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
              onTap: () {},
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
                        'Step 2 : Keep Recycle Bags outside before 5 AM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
              onTap: () {},
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
                        'Step 3 : We will collect and process for recycle',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                    MaterialPageRoute(builder: (context) => voucher()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Color(0xFF0D8DF6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Recycle Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
          ],
        ),
      ),
    );
  }
}
