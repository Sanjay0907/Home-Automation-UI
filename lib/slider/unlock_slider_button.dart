import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/pages/homepage.dart';
import 'package:home_automation_app_ui/slider/unlock_slider.dart';

class Gate1UnlockSliderButton extends StatefulWidget {
  const Gate1UnlockSliderButton({Key? key}) : super(key: key);

  @override
  _Gate1UnlockSliderButtonState createState() =>
      _Gate1UnlockSliderButtonState();
}

class _Gate1UnlockSliderButtonState extends State<Gate1UnlockSliderButton> {
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
                  color: Colors.transparent,
                ),
              )),
          // const arrow_left(),
          const arrow_right(),
          Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.transparent),
              child: const Center(
                child: FaIcon(FontAwesomeIcons.unlock,
                    size: 25, color: Colors.white),
              )),
        ],
      ),
      Positioned(
          bottom: 0,
          child: Unlock_Slider(action: () {
            setState(() {
              print('before = $gate_1_is_lock');
              gate_1_is_lock = !gate_1_is_lock;
              print('after = $gate_1_is_lock');
            });
            HomePage();
          }))
    ]);
  }
}
