import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_automation_app_ui/constant.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vibration/vibration.dart';

class ABC extends StatefulWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  _ABCState createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: page_background(),
        child: SafeArea(
            child: Container(
                child: Column(
          children: [lock()],
        ))),
      ),
    );
  }
}

class lock extends StatefulWidget {
  const lock({
    Key? key,
  }) : super(key: key);

  @override
  State<lock> createState() => _lockState();
}

class _lockState extends State<lock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      height: MediaQuery.of(context).size.width / 3.2,
      width: MediaQuery.of(context).size.width / 2.3,
      // color: Colors.amber,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gate_2_is_lock
              ? [
                  Colors.amber,
                  Colors.black,
                  Colors.black,
                ]
              : [Colors.grey, Colors.black, Colors.black],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Lock_Slider(action: () {}),
          ],
        ),
      ),
    );
  }
}

class Lock_Slider extends StatefulWidget {
  ///To make button more customizable add your child widget
  final Widget? child;

  ///Sets the radius of corners of a button.
  final double radius;

  ///Use it to define a height and width of widget.
  final double height;
  final double width;
  final double? buttonSize;

  ///Use it to define a color of widget.
  final Color backgroundColor;
  final Color baseColor;
  final Color highlightedColor;
  final Color buttonColor;

  ///Change it to gave a label on a widget of your choice.
  final Text? label;

  ///Gives a alignment to a slider icon.
  final Alignment alignLabel;
  final BoxShadow? boxShadow;
  final Widget? icon;
  final Function action;

  ///Make it false if you want to deactivate the shimmer effect.
  final bool shimmer;

  ///Make it false if you want maintain the widget in the tree.
  final bool dismissible;

  final bool vibrationFlag;

  ///The offset threshold the item has to be dragged in order to be considered
  ///dismissed e.g. if it is 0.4, then the item has to be dragged
  /// at least 40% towards one direction to be considered dismissed
  final double dismissThresholds;

  final bool disable;

  Lock_Slider({
    required this.action,
    this.radius = 100,
    this.boxShadow,
    this.child,
    this.vibrationFlag = false,
    this.shimmer = true,
    this.height = 70,
    this.buttonSize,
    this.width = 182,
    this.alignLabel = const Alignment(0.6, 0),
    this.backgroundColor = const Color(0xffe0e0e0),
    this.baseColor = Colors.black87,
    this.buttonColor = Colors.white,
    this.highlightedColor = Colors.white,
    this.label,
    this.icon,
    this.dismissible = true,
    this.dismissThresholds = 0.75,
    this.disable = false,
  }) : assert((buttonSize ?? 60) <= (height));

  @override
  _Lock_SliderState createState() => _Lock_SliderState();
}

class _Lock_SliderState extends State<Lock_Slider> {
  late bool flag;

  @override
  void initState() {
    super.initState();
    flag = true;
  }

  @override
  Widget build(BuildContext context) {
    return flag == true
        ? _control()
        : widget.dismissible == true
            ? Container()
            : _control();
  }

  Widget _control() => Container(
        // height: widget.height,
        height: 45,
        width: widget.width,
        decoration: BoxDecoration(
          // color:
          //     widget.disable ? Colors.grey.shade700 : widget.backgroundColor,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.centerRight,
        child: Stack(
          alignment: Alignment.centerRight,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: widget.shimmer && !widget.disable
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: const SizedBox(
                        width: 50,
                      ),
                    )
                  : widget.label,
            ),
            widget.disable
                ? Tooltip(
                    verticalOffset: 50,
                    message: 'Button is disabled',
                    child: Container(
                      width: (widget.width) - (widget.height),
                      height: (widget.height - 70),
                      alignment: Alignment.centerRight,
                      // padding: EdgeInsets.only(
                      //   left: (widget.height -
                      //           (widget.buttonSize == null
                      //               ? widget.height * 0.9
                      //               : widget.buttonSize)!) /
                      //       2,
                      // ),
                      child: widget.child ??
                          Container(
                            height: widget.buttonSize ?? widget.height,
                            width: widget.buttonSize ?? widget.height,
                            decoration: BoxDecoration(
                                boxShadow: widget.boxShadow != null
                                    ? [
                                        widget.boxShadow!,
                                      ]
                                    : null,
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.circular(widget.radius)),
                            child: Center(child: widget.icon),
                          ),
                    ),
                  )
                : Dismissible(
                    key: Key("cancel"),
                    direction: DismissDirection.endToStart,
                    // direction: DismissDirection.endToStart,
                    dismissThresholds: {
                      DismissDirection.startToEnd: widget.dismissThresholds
                    },

                    ///gives direction of swiping in argument.
                    onDismissed: (dir) async {
                      setState(() {
                        if (widget.dismissible) {
                          flag = false;
                        } else {
                          flag = !flag;
                        }
                      });

                      widget.action();
                      final hasVibrator =
                          await Vibration.hasVibrator() ?? false;
                      if (widget.vibrationFlag && hasVibrator) {
                        try {
                          // Vibration.vibrate(duration: 200);
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: Container(
                      
                      width: widget.width - widget.height,
                      height: widget.height,
                      alignment: Alignment.centerRight,
                      // padding: EdgeInsets.only(
                      //   left: (widget.height -
                      //           (widget.buttonSize == null
                      //               ? widget.height
                      //               : widget.buttonSize!)) /
                      //       2,
                      // ),
                      child: widget.child ??
                          Container(
                            // height: widget.buttonSize ?? widget.height,
                            height: 50,
                            // width: widget.buttonSize ?? widget.height,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(220, 51, 51, 51),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent),
                                  child: const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.unlock,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                  )),
                            ),
                          ),
                    ),
                  ),
          ],
        ),
      );
}
