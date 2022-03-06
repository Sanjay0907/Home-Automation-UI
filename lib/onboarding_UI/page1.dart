import 'package:flutter/material.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/pages/homepage.dart';
import 'package:home_automation_app_ui/slider/homepage_Slider.dart';
import 'package:sizer/sizer.dart';

class Intro_Page_1 extends StatelessWidget {
  const Intro_Page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: page_background(),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                // right: 0,
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      image: AssetImage(
                          "assets/images/intro_page_pic_modified.png"),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Smarter Homes",
                    style: TextStyle(
                      fontSize: 8.h,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      "Pay securely and safely with finance management",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 2.h),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFFD700),
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        height: 9.5.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.amber,
                              Color.fromARGB(255, 124, 102, 35),
                              Color.fromARGB(255, 73, 59, 18),
                              Color.fromARGB(255, 26, 24, 24),
                            ],
                          ),
                        ),
                        child: HomePage_SliderButton(
                          action: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                                (Route<dynamic> route) => false);
                          },
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//   Container slider_to_homepage() {
//     return Container(
//       height: 80,
//       width: 180,
//       decoration: BoxDecoration(
//         // color: Colors.amber,
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xffF6CA5D),
//             Color(0xffFEB90F),
//           ],
//         ),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: Center(
//         child: Text(
//           "Start",
//           style: TextStyle(
//               fontSize: 2.h, fontWeight: FontWeight.w600, color: Colors.black),
//         ),
//       ),
//     );
//   }
}
