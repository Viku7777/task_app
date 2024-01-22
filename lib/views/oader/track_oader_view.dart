import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/needhelp/needhelp.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text(
        'Step 1',
        style: TextStyle(color: Colors.black),
      ),
      content: Text(
        'Hello!',
        style: TextStyle(color: Colors.black),
      ),
      isActive: true,
    ),
    const Step(
      title: Text(
        'Step 2',
        style: TextStyle(color: Colors.black),
      ),
      content: Text(
        'World!',
        style: TextStyle(color: Colors.black),
      ),
      isActive: true,
    ),
    const Step(
      title: Text(
        'Step 3',
        style: TextStyle(color: Colors.black),
      ),
      content: Text(
        'Hello World!',
        style: TextStyle(color: Colors.black),
      ),
      state: StepState.complete,
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
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
        title: Container(
          child: Text(
            'Track order',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [],
        elevation: 0,
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Order ID: 123456789',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 60, top: 50),
                child: Stepper(
                  currentStep: this.current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (current_step < steps.length - 1) {
                        current_step = current_step + 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (current_step > 0) {
                        current_step = current_step - 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                  // Set the active color here
                ),
              ),
            ),
            Center(
              child: Text(
                'Order Track',
                style: TextStyle(
                    color: Color(0xFFEC2578),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Set the border color
                  width: 1.0, // Set the border width
                ),
              ),
              child: Column(
                children: [
                  Container(
                      child: Image.asset(
                    'assets/img_34.png',
                    width: 200,
                    height: 200,
                  )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => needhelp()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Color(0xFFEC2578),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 3,
                        child: ListTile(
                          title: Center(
                            child: Text(
                              'Need a Assistance..',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.headset_mic_sharp)],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
