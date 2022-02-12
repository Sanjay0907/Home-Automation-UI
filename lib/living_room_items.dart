import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:home_automation_app_ui/no_glow_physics.dart';

class Living_Room_Items extends StatefulWidget {
  const Living_Room_Items({ Key? key }) : super(key: key);

  @override
  _Living_Room_ItemsState createState() => _Living_Room_ItemsState();
}

class _Living_Room_ItemsState extends State<Living_Room_Items> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
                    child: ScrollConfiguration(
                      behavior: NoGlowScrollBehavior(),
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => setState(() {
                                  studio_light_is_on = !studio_light_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: studio_light_is_on
                                          ? [
                                              Colors.amber,
                                             const Color.fromARGB(255, 78, 78, 78),
                                             const Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                             const Color.fromARGB(255, 85, 84, 84),
                                             const Color.fromARGB(255, 80, 78, 78),
                                             const Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image(
                                                image: AssetImage(
                                                  "assets/images/hanging_light.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Studio Light",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "Philips Hue",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: studio_light_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  studio_light_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.solidCircle,
                                              color: Colors.purple,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => setState(() {
                                  door_light_is_on = !door_light_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: door_light_is_on
                                          ? [
                                              Colors.amber,
                                              Color.fromARGB(255, 78, 78, 78),
                                              Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                              Color.fromARGB(255, 85, 84, 84),
                                              Color.fromARGB(255, 80, 78, 78),
                                              Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image(
                                                image: AssetImage(
                                                  "assets/images/hanging_light.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Door Light",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "Amazon 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: door_light_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  door_light_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => setState(() {
                                  coffee_machine_is_on = !coffee_machine_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: coffee_machine_is_on
                                          ? [
                                              Colors.amber,
                                             const Color.fromARGB(255, 78, 78, 78),
                                             const Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                             const Color.fromARGB(255, 85, 84, 84),
                                             const Color.fromARGB(255, 80, 78, 78),
                                             const Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Coffee Machine",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "Philips Smart Brew",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "05:25  Latte",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: coffee_machine_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  coffee_machine_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => setState(() {
                                  ac_is_on = !ac_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: ac_is_on
                                          ? [
                                              Colors.amber,
                                              Color.fromARGB(255, 78, 78, 78),
                                              Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                              Color.fromARGB(255, 85, 84, 84),
                                              Color.fromARGB(255, 80, 78, 78),
                                              Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image(
                                                image: AssetImage(
                                                  "assets/images/ac.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "A.C.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "LG Smart",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ac_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  ac_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => setState(() {
                                  lr_tv_is_on = !lr_tv_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: lr_tv_is_on
                                          ? [
                                              Colors.amber,
                                             const Color.fromARGB(255, 78, 78, 78),
                                             const Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                             const Color.fromARGB(255, 85, 84, 84),
                                             const Color.fromARGB(255, 80, 78, 78),
                                             const Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image(
                                                image: AssetImage(
                                                  "assets/images/tv.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "LR TV",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "Samsung OLED",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: lr_tv_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  lr_tv_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.solidCircle,
                                              color: Colors.transparent,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => setState(() {
                                  chandelier_is_on = !chandelier_is_on;
                                }),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 3),
                                  height:
                                      MediaQuery.of(context).size.width / 3.2,
                                  width:
                                      MediaQuery.of(context).size.width / 2.3,
                                  // color: Colors.amber,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: chandelier_is_on
                                          ? [
                                              Colors.amber,
                                              Color.fromARGB(255, 78, 78, 78),
                                              Color.fromARGB(255, 41, 41, 41),
                                            ]
                                          : [
                                              Color.fromARGB(255, 85, 84, 84),
                                              Color.fromARGB(255, 80, 78, 78),
                                              Color.fromARGB(255, 24, 24, 24)
                                            ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(1),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                    // color: Colors.pink,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // color: Color.fromARGB(255, 11, 85, 223),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image(
                                                image: AssetImage(
                                                  "assets/images/chandelier.png",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Chandelier",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 3),
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: chandelier_is_on
                                                          ? Colors.amber
                                                          : Colors.grey,
                                                    ),
                                                  ),
                                                  chandelier_is_on
                                                      ? const Text(
                                                          "ON",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.amber),
                                                        )
                                                      : const Text(
                                                          "OFF",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                         const SizedBox(height: 100,)
                        ],
                      ),
                    ),
                  );
  }
}