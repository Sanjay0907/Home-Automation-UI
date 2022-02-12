import 'package:flutter/material.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/pages/studio_light.dart';

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
                    ? Color.fromARGB(255, 247, 203, 71)
                    : Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 120,
            child: Center(
              child: Text(
                "Living Room",
                style: in_living_room
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white)
                    : const TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 15,
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
                    ? Color.fromARGB(255, 247, 203, 71)
                    : Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 120,
            child: Center(
              child: Text(
                "Kitchen",
                style: in_kitchen
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white)
                    : const TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 15,
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
                    ? Color.fromARGB(255, 247, 203, 71)
                    : Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 120,
            child: Center(
              child: Text(
                "Bedroom",
                style: in_bedroom
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white)
                    : const TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 15,
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
                    ? Color.fromARGB(255, 247, 203, 71)
                    : Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 120,
            child: Center(
              child: Text(
                "Bathroom",
                style: in_bathroom
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white)
                    : const TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 15,
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
                    ? Color.fromARGB(255, 247, 203, 71)
                    : Color.fromARGB(255, 78, 77, 77),
                width: 1,
              ),
            ),
            height: 32,
            width: 120,
            child: Center(
              child: Text(
                "Dining",
                style: in_dining
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white)
                    : const TextStyle(
                        color: Color.fromARGB(255, 109, 108, 108),
                        fontSize: 15,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
