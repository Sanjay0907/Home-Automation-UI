import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/slider/lock_slider.dart';
import 'package:home_automation_app_ui/slider/unlock_slider.dart';

class Gate1LockSliderButton extends StatefulWidget {
  const Gate1LockSliderButton({Key? key}) : super(key: key);

  @override
  _Gate1LockSliderButtonState createState() => _Gate1LockSliderButtonState();
}

class _Gate1LockSliderButtonState extends State<Gate1LockSliderButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.transparent),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.lock,
                  size: 25,
                  color: Colors.white,
                ),
              )),
          const arrow_left(),
          // const arrow_right(),
          Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.transparent),
              child: const Center(
                child: FaIcon(FontAwesomeIcons.unlock,
                    size: 25, color: Colors.transparent),
              )),
        ],
      ),
      Positioned(bottom: 0, right: 0,child: Lock_Slider(action: () {
        setState(() {
          gate_1_is_lock = !gate_1_is_lock;
        });
      }))
    ]);
  }
}
