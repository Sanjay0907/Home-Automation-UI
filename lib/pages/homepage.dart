// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/living_room_items.dart';
import 'package:home_automation_app_ui/nav_bar_custom_paint.dart';
import 'package:home_automation_app_ui/no_glow_physics.dart';
import 'package:home_automation_app_ui/pages/studio_light.dart';
import 'package:home_automation_app_ui/room_buttons.dart';
import 'package:home_automation_app_ui/slider/lock_slider_button.dart';
import 'package:home_automation_app_ui/slider/unlock_slider.dart';
import 'package:home_automation_app_ui/slider/unlock_slider_button.dart';
import 'package:home_automation_app_ui/pages/studio_light.dart';
import 'package:sizer/sizer.dart';

// import 'living_room_items.dart';

class HomePage extends StatefulWidget {
  bool gt1_lock = true;
  bool gt2_lock = false;
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List rooms = ["Living Room", "Kitchen", "BedRoom", "Bathroom", "Dining"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: page_background(),
            child: SafeArea(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 100.w,
                        height: 6.h,
                        child: const Image(
                          image: AssetImage(
                            "assets/images/home_automation__logo.png",
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Studio_Light()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 22, 22, 22),
                              border: Border.all(
                                color: const Color.fromARGB(255, 83, 83, 83),
                                width: 1.5,
                              ),
                            ),
                            height: 4.5.h,
                            width: 4.5.h,
                            // color: Colors.white,

                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 2.5.h,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 104, 98, 98),
                              fontSize: 3.7.h,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Moritz",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 6.h,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Image(
                            image: AssetImage("assets/images/cloud_sun.png"),
                          ),
                          Text(
                            "16°C · NewYork",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 87, 86, 86),
                              fontSize: 2.h,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.1.h,
                  ),
                  SizedBox(
                    height: 5.6.h,
                    child: ScrollConfiguration(
                        behavior: NoGlowScrollBehavior(),
                        child: const Room_Buttons()),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 16.2.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: !gate_2_is_lock
                                ? [
                                    Colors.amber,
                                    const Color.fromARGB(255, 85, 84, 84),
                                    Colors.black,
                                  ]
                                : [Colors.grey, Colors.black, Colors.black],
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 7),
                          height: (MediaQuery.of(context).size.width / 3) - 5,
                          width: (MediaQuery.of(context).size.width / 2.3) - 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Gate 2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text("Unlocked",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 104, 101, 101))),
                                    ]),
                              ),
                              !gate_2_is_lock
                                  ? const Gate1LockSliderButton()
                                  : const Gate1UnlockSliderButton(),
                              // if (gate_1_is_lock == true)
                              //   const Gate1LockSliderButton(),
                              // if (gate_1_is_lock != true)
                              //   const Gate1UnlockSliderButton(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 16.2.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: gate_1_is_lock
                                ? [
                                    Colors.amber,
                                    const Color.fromARGB(255, 85, 84, 84),
                                    Colors.black,
                                  ]
                                : [
                                    Colors.grey,
                                    const Color.fromARGB(255, 92, 91, 91),
                                    Colors.black
                                  ],
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 7),
                          height: (MediaQuery.of(context).size.width / 3) - 5,
                          width: (MediaQuery.of(context).size.width / 2.3) - 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Gate 1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text("Unlocked",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 104, 101, 101))),
                                    ]),
                              ),
                              gate_1_is_lock
                                  ? const Gate1LockSliderButton()
                                  : const Gate1UnlockSliderButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Living_Room_Items(),

                  // room_objects(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 11.h,
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                size: Size(
                    MediaQuery.of(context).size.width,
                    (MediaQuery.of(context).size.width * 0.25)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: NavBarCustomPaint(),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            settings = false;
                            in_home = true;
                            grid_view = false;
                            notification = false;
                          });
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.home,
                          color: in_home ? Colors.amber : Colors.white,
                          size: 3.6.h,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            settings = false;
                            in_home = false;
                            grid_view = true;
                            notification = false;
                          });
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.gripHorizontal,
                          color: grid_view ? Colors.amber : Colors.white,
                          size: 3.6.h,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            settings = false;
                            in_home = false;
                            grid_view = false;
                            notification = true;
                          });
                        },
                        child: Badge(
                          badgeColor: Colors.amber,
                          position: BadgePosition.topStart(),
                          badgeContent: const Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.bell,
                            color: notification ? Colors.amber : Colors.white,
                            size: 3.6.h,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            settings = true;
                            in_home = false;
                            grid_view = false;
                            notification = false;
                          });
                        },
                        icon: Icon(
                          Icons.settings,
                          color: settings ? Colors.amber : Colors.white,
                          size: 3.8.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container room(String _room) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 7,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color.fromARGB(255, 78, 77, 77),
          width: 2,
        ),
      ),
      height: 32,
      width: 120,
      child: Center(
        child: Text(
          _room,
          style: const TextStyle(
            color: Color.fromARGB(255, 109, 108, 108),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class room_objects extends StatefulWidget {
  const room_objects({
    Key? key,
  }) : super(key: key);

  @override
  State<room_objects> createState() => _room_objectsState();
}

class _room_objectsState extends State<room_objects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
      height: MediaQuery.of(context).size.width / 3.2,
      width: MediaQuery.of(context).size.width / 2.3,
      // color: Colors.amber,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: !gate_2_is_lock
              ? [
                  Colors.amber,
                  const Color.fromARGB(255, 78, 78, 78),
                  const Color.fromARGB(255, 41, 41, 41),
                ]
              : [
                  const Color.fromARGB(255, 85, 84, 84),
                  const Color.fromARGB(255, 34, 33, 33),
                  const Color.fromARGB(255, 24, 24, 24)
                ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        // color: Colors.pink,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Color.fromARGB(255, 11, 85, 223),
            color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage(
                      "assets/images/coffee_machine.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Coffee Machine",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Philips Smart Brew",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const Text(
                  "05:25 · Latte",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        "ON",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "23°",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const FaIcon(
                  FontAwesomeIcons.angleRight,
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
