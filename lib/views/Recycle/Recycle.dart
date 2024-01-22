import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Recycle/Recycleprocess.dart';

class Recycle extends StatefulWidget {
  const Recycle({Key? key}) : super(key: key);

  @override
  State<Recycle> createState() => _RecycleState();
}

class _RecycleState extends State<Recycle> {
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
          'Recycle',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset('assets/img_26.png')),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                'Please select Option',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Recycleprocess()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Color(0xFFD3D71E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Request to Recycle Bags',
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
      ),
    );
  }
}
