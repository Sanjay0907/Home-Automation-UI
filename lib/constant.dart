// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

bool gate_2_is_lock = false;
bool gate_1_is_lock = false;

bool button_pressed = false;

// Room Buttons
bool in_living_room = true;
bool in_kitchen = false;
bool in_bedroom = false;
bool in_bathroom = false;
bool in_dining = false;

// Navigation Bar Buttons
bool in_home = true;
bool notification = false;
bool settings = false;
bool grid_view = false;

// Living Room Item Buttons
bool studio_light_is_on  = true;
bool door_light_is_on = false;
bool coffee_machine_is_on = true;
bool ac_is_on = true;
bool lr_tv_is_on = false;
bool chandelier_is_on = false;


List living_room = [
  {
    "gadget_image" : "assets/images/hanging_light.png",
    "gadget_name" : "Studio Light",
    "gadget_company" : "Philips Hue",
    "lower_text" : "",
    "middle_text" : "",
    "icon" : "circle",
    "icon_color" : "purple"
  },
  {
    "gadget_image" : "assets/images/hanging_light.png",
    "gadget_name" : "Door Light",
    "gadget_company" : "Amazon 1",
    "lower_text" : "",
    "middle_text" : "",
    "icon" : "clock",
    "icon_color" : ""
  },
  {
    "gadget_image" : "assets/images/coffee_machine.png",
    "gadget_name" : "Coffee Machine",
    "gadget_company" : "Philips Smart Brew",
    "lower_text" : "05:25 · Latte",
    "middle_text" : "",
    "icon" : "clock",
    "icon_color" : ""
  },
  {
    "gadget_image" : "assets/images/ac.png",
    "gadget_name" : "A.C.",
    "gadget_company" : "LG Smart",
    "lower_text" : "",
    "middle_text" : "23°",
    "icon" : "angleRight",
    "icon_color" : ""
  },
  {
    "gadget_image" : "assets/images/tv.png",
    "gadget_name" : "LR TV",
    "gadget_company" : "Samsung OLED",
    "lower_text" : "",
    "middle_text" : "",
    "icon" : "",
    "icon_color" : ""
  },
  {
    "gadget_image" : "",
    "gadget_name" : "",
    "gadget_company" : "",
    "lower_text" : "",
    "middle_text" : "",
    "icon" : "",
    "icon_color" : "",
  }
];

BoxDecoration page_background() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff272727),
        Color(0xff000000),
      ],
      begin: Alignment.topLeft,
      end: Alignment.center,
    ),
  );
}

class arrow_right extends StatelessWidget {
  const arrow_right({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Shimmer.fromColors(
        period: const Duration(seconds: 2),
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FaIcon(
              FontAwesomeIcons.angleRight,
              color: Color.fromARGB(255, 209, 206, 206),
            ),
            FaIcon(
              FontAwesomeIcons.angleRight,
              color: Color.fromARGB(255, 143, 140, 140),
            ),
            FaIcon(
              FontAwesomeIcons.angleRight,
              color: Color.fromARGB(255, 92, 91, 91),
            )
          ],
        ),
      ),
    );
  }
}

class arrow_left extends StatelessWidget {
  const arrow_left({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        period: const Duration(seconds: 2),
        direction: ShimmerDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Color.fromARGB(255, 92, 91, 91),
            ),
            FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Color.fromARGB(255, 143, 140, 140),
            ),
            FaIcon(
              FontAwesomeIcons.angleLeft,
              color: Color.fromARGB(255, 209, 206, 206),
            )
          ],
        ),
      ),
    );
  }
}
