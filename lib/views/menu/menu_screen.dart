import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/Holidays/holiday.dart';
import 'package:mr_ambarisha_frontend_new/views/Notification/allnoti.dart';
import 'package:mr_ambarisha_frontend_new/views/Recycle/Recycle.dart';
import 'package:mr_ambarisha_frontend_new/views/Rewards/Invite.dart';
import 'package:mr_ambarisha_frontend_new/views/feedback/feedback.dart';
import 'package:mr_ambarisha_frontend_new/views/menu/add_membershiv.dart';
import 'package:mr_ambarisha_frontend_new/views/menu/cms/faq_view.dart';
import 'package:mr_ambarisha_frontend_new/views/menu/cms/help_support_view.dart';
import 'package:mr_ambarisha_frontend_new/views/menu/cms/term_view.dart';
import 'package:mr_ambarisha_frontend_new/views/oader/orderhistory.dart';
import 'package:mr_ambarisha_frontend_new/views/oader/track_oader_view.dart';
import 'package:mr_ambarisha_frontend_new/views/subscription_celender/subscription_celender.dart';
import 'package:mr_ambarisha_frontend_new/views/wallet/wallet_history.dart';

import '../Basket/Basket.dart';
import '../Profile/edit_profile.dart';
import '../Rewards/Rewards(coins).dart';
import '../needhelp/needhelp.dart';

class MenuScreenView extends StatefulWidget {
  const MenuScreenView({super.key});

  @override
  State<MenuScreenView> createState() => _MenuScreenViewState();
}

class _MenuScreenViewState extends State<MenuScreenView> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Balance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              kbox10(),
              Row(
                children: [
                  Image.asset("assets/eary_mo.png"),
                  kboxw10(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ambi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Verified Profile",
                        style: TextStyle(
                            color: Color(0xff8F959E),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  kboxw20(),
                  Image.asset("assets/Star6.png"),
                ],
              ),
              kbox20(),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff9170EE),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      kroitem("wallet", "Wallet"),
                      kroitem2(Icons.history, "Order History"),
                      kroitem3(Icons.notifications, "Notification"),
                      kroitem4(Icons.wallet, "My Basket"),
                      kroitem5(Icons.headset_mic_rounded, "Need Help..?")
                    ],
                  ),
                ),
              ),
              kbox30(),
              Row(
                children: [
                  const Icon(
                    Icons.help_outline_outlined,
                    color: Colors.black,
                  ),
                  kboxw10(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reminder to  order",
                        style: TextStyle(
                            color: Color(0xff8F959E),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "You have Selected duration for us",
                        style: TextStyle(
                            color: Color(0xff8F959E),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " to send you recurring reminder",
                        style: TextStyle(
                            color: Color(0xff8F959E),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  kboxw10(),
                  CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ],
              ),
              kbox20(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: kcard(Icons.person, "Account Information"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileView()));
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.transfer_within_a_station_sharp,
                          "Transactions"),
                      onTap: () {
                        Get.to(const TransactionView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.wallet_membership, "Add MemberShip"),
                      onTap: () {
                        Get.to(const AddMembershipView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.delivery_dining_outlined, "Delivery"),
                      onTap: () {
                        Get.to(StepperDemo());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.shopping_cart, "Subscription"),
                      onTap: () {
                        Get.to(SubscriptionCelenderView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.wallet, "Recharge Wallet"),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomBottomSheet();
                          },
                        );
                      },
                    ),
                    kbox5(),
                    kcardholidays(Icons.flight, " Holidays"),
                    kbox5(),
                    InkWell(
                      child:
                          kcard(Icons.pivot_table_chart, "Reward Point(Coins)"),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rewards()));
                      },
                    ),
                    kbox5(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Recycle()));
                      },
                      child: kcard(Icons.playlist_add_check_circle,
                          " Recycling Packing Metrial"),
                    ),
                    kbox5(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Invite()));
                      },
                      child: kcard(Icons.share, " Refer & Earn"),
                    ),
                    kbox5(),
                    InkWell(
                      child:
                          kcard(Icons.headset_mic_outlined, " Helps & FAQ’s"),
                      onTap: () {
                        Get.to(const HelpAndSuportView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child:
                          kcard(Icons.note_alt_rounded, "Terms and Condition"),
                      onTap: () {
                        Get.to(const TermAndConditionView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard1(Icons.money,"Post paid Plan",),
                      onTap: () {
                        // Get.to(const TermAndConditionView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.location_searching_outlined, "About"),
                      onTap: () {
                        Get.to(const FaqView());
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.feed_outlined, " Feed back"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => feedback()));
                      },
                    ),
                    kbox5(),
                    InkWell(
                      child: kcard(Icons.location_searching_rounded,
                          "Serviceable Apartment List"),
                      onTap: () {
                        _serveableaprt(context);
                      },
                    ),
                    kbox10(),
                    Row(
                      children: [
                        const Icon(
                          Icons.logout,
                          color: Color(0xffD71E40),
                        ),
                        kboxw10(),
                        const Text(
                          "Log out",
                          style: TextStyle(
                              color: Color(0xffD71E40),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  kcard(icon, text) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
              kboxw10(),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff1D1E20),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ]),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
      ),
    );
  }

  kcard1(icon, text) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
              kboxw10(),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff1D1E20),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ]),
            CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
  kroitem(icon, text) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return CustomBottomSheet();
          },
        );
      },
      child: Column(
        children: [
          Image.asset("assets/$icon.png"),
          //kbox5(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  kroitem2(icon, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => orderhistory()));
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          kbox5(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  kroitem3(icon, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => allnoti()));
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          kbox5(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  kroitem4(icon, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Basket()));
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          kbox5(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  kroitem5(icon, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => needhelp()));
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          kbox5(),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  kcardholidays(icon, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => holiday()));
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
                kboxw10(),
                Text(
                  text,
                  style: const TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ]),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomSheet extends StatefulWidget {
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  String selectedValue = '';

  Widget CircularContainer(String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedValue = value;
          _controller.text = value;
        });
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            '₹ $value',
            style: TextStyle(color: Color(0xFF0091BE)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Sufficient wallet balance',
              style: TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Mulish'),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
            ],
            elevation: 0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/circular_image.png'),
              radius: 24,
            ),
            title: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Your wallet balance is ₹',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '2.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              'You can add up to ₹4,999',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Please add an amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Mulish'),
                  ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // Set border radius to 10
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    prefixText: '₹ ',
                    // Set the text color to black
                    hintStyle: TextStyle(color: Colors.black),
                    // Set the input text color to black
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(
                          10.0), // Set border radius to 10
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(
                          10.0), // Set border radius to 10
                    ),
                  ),
                  onChanged: (value) {
                    selectedValue = value;
                  },
                  style: TextStyle(
                      color: Colors.green), // Set the input text color to green
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularContainer('250'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularContainer('500'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularContainer('1000'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: 120, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  4,
                  (index) => CustomContainer(),
                ),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Choose payment method',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Image.asset('assets/img_7.png')),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 48),
                primary: Color(0xFF86C649),
                // Set background color to #0091BE
                // Increase button width
              ),
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 350, // Adjust the width as needed
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          right: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_6.png'),
                  // Add your image path
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

void _serveableaprt(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Serviceable Apartment List',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Delhi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Appartment1',
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
                    MaterialPageRoute(builder: (context) => feedback()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'Suggest an Appartment',
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
      );
    },
  );
}
