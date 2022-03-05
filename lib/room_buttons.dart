// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/pages/studio_light.dart';
import 'package:sizer/sizer.dart';

class Room_Buttons extends StatefulWidget {
  const Room_Buttons({Key? key}) : super(key: key);

  @override
  _Room_ButtonsState createState() => _Room_ButtonsState();
}

class _Room_ButtonsState extends State<Room_Buttons> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              in_living_room = true;
              in_kitchen = false;
              in_bedroom = false;
              in_bathroom = false;
              in_dining = false;

              // Navigator.push(context, MaterialPageRoute(builder: (context) => Studio_Light()));
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: in_living_room
                    ? const Color.fromARGB(255, 247, 203, 71)
                    : const Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            // height: 2.h,
            width: 30.w,
            child: Center(
              child: Text(
                "Living Room",
                style: in_living_room
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8.h,
                        color: Colors.white)
                    : TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 1.8.h,
                      ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              in_living_room = false;
              in_kitchen = true;
              in_bedroom = false;
              in_bathroom = false;
              in_dining = false;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: in_kitchen
                    ? const Color.fromARGB(255, 247, 203, 71)
                    : const Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 30.w,
            child: Center(
              child: Text(
                "Kitchen",
                style: in_kitchen
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8.h,
                        color: Colors.white)
                    : TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 1.8.h,
                      ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              in_living_room = false;
              in_kitchen = false;
              in_bedroom = true;
              in_bathroom = false;
              in_dining = false;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: in_bedroom
                    ? const Color.fromARGB(255, 247, 203, 71)
                    : const Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 30.w,
            child: Center(
              child: Text(
                "Bedroom",
                style: in_bedroom
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8.h,
                        color: Colors.white)
                    : TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 1.8.h,
                      ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              in_living_room = false;
              in_kitchen = false;
              in_bedroom = false;
              in_bathroom = true;
              in_dining = false;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: in_bathroom
                    ? const Color.fromARGB(255, 247, 203, 71)
                    : const Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 30.w,
            child: Center(
              child: Text(
                "Bathroom",
                style: in_bathroom
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8.h,
                        color: Colors.white)
                    : TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 1.8.h,
                      ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              in_living_room = false;
              in_kitchen = false;
              in_bedroom = false;
              in_bathroom = false;
              in_dining = true;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: in_dining
                    ? const Color.fromARGB(255, 247, 203, 71)
                    : const Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 30.w,
            child: Center(
              child: Text(
                "Dining",
                style: in_dining
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8.h,
                        color: Colors.white)
                    : TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 1.8.h,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
