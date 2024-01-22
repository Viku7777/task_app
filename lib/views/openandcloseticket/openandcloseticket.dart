import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Open and Close Ticket',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.headset_mic_outlined,
              color: Colors.black,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black, // Change indicator color to black
            labelColor: Colors.black, // Change tab text color to black
            tabs: [
              Tab(
                // Bike icon for the first tab
                text: 'Open Issues',
              ),
              Tab(
                // Cycle icon for the second tab
                text: 'Recently Closed',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // First Tab - Open Issues

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img_20.png')
// Add your content for the Open Issues tab here
              ],
            ),

            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img_21.png')

                  // Add your content for the Recently Closed tab here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
