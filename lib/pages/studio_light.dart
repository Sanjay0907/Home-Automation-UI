import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';

class Studio_Light extends StatefulWidget {
  const Studio_Light({
    Key? key,
  }) : super(key: key);

  @override
  State<Studio_Light> createState() => _Studio_LightState();
}

class _Studio_LightState extends State<Studio_Light> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: page_background(),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: const FittedBox(
                      child: Text(
                        "Studio Lights",
                        style: TextStyle(color: Color(0xffABABAB)),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 253, 181, 38),
                                  Color.fromARGB(255, 73, 52, 9)
                                ])),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const FittedBox(
                          child: Text(
                            "Saturn Yellow",
                            style: TextStyle(
                                color: Color.fromARGB(255, 238, 232, 232)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: const FittedBox(
                          child: Text(
                            "Profile 1 . 80%",
                            style: TextStyle(
                                color: Color.fromARGB(255, 78, 77, 77)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.center,
                              colors: [
                                Color.fromARGB(255, 136, 113, 59),
                                Colors.black
                              ],
                            ),
                          ),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12)),
                              width: 55,
                              height: 45,
                              // color: Colors.black,
                              child: const Center(
                                  child: FaIcon(
                                FontAwesomeIcons.powerOff,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFFCA62),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
