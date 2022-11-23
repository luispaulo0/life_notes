import 'package:flutter/material.dart';
import 'package:life_notes/widgets/circle.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 0.85;
    return Scaffold(
      backgroundColor: const Color(0xff130177),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -circleSize * 0.67,
                right: -circleSize * 0.49,
                child: circle(
                  size: circleSize,
                )),
            Positioned(
                top: circleSize * 1.98,
                left: circleSize * 0.03,
                child: circle(size: circleSize)),
          ],
        ),
      )),
    );
  }
}
