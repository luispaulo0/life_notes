import 'package:flutter/material.dart';
import 'package:life_notes/pages/Publicaciones.dart';
import 'package:life_notes/widgets/circle.dart';

class Corte extends StatefulWidget {
  Corte({Key? key}) : super(key: key);

  @override
  State<Corte> createState() => _CorteState();
}

class _CorteState extends State<Corte> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 1;
    final double circleSize2 = size.width * 0.88;
    final double leftRight = size.width * 0.05;
    final double toplist = size.width * 0.46;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Software"),
        actions: [
          Container(
            child: Image.asset('assets/images/LifeNotes.png'),
            height: size.width * 0.5,
            width: size.width * 0.5,
            padding: const EdgeInsets.only(left: 55),
          )
        ],
        backgroundColor: const Color(0xff130177),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context, true)},
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: -circleSize * 0.68,
              right: -circleSize * 0.74,
              child: circle(size: circleSize)),
          Positioned(
              top: circleSize2 * 0.48,
              left: circleSize2 * 0.07,
              child: circle(size: circleSize2)),
          Positioned(
              top: size.width * 0.13,
              left: size.width * 0.05,
              child: const Text(
                "Software",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: size.width * 0.23,
              left: size.width * 0.4,
              child: const Text(
                "Cortes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Padding(
            padding: EdgeInsets.only(
                top: toplist, left: leftRight, right: leftRight),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: size.width * 0.18,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xff130177)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          minimumSize: const Size(350.0, 50.0),
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => publicaciones()));
                        },
                        child: const Text(
                          'Corte 1',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: size.width * 0.18,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xff130177)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          minimumSize: const Size(350.0, 50.0),
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => publicaciones()));
                        },
                        child: const Text(
                          'Corte 2',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: size.width * 0.18,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xff130177)),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          minimumSize: const Size(350.0, 50.0),
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => publicaciones()));
                        },
                        child: const Text(
                          'Corte 3',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: circleSize * 1.6,
            width: size.width * 1.001,
            child: Container(
              height: size.width * 0.2,
              decoration: const BoxDecoration(
                color: Color(0xffFC3D68),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
              top: size.width * 1.62,
              left: size.width * 0.44,
              child: const Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              )),
          Positioned(
              top: size.width * 1.62,
              left: size.width * 0.13,
              child: const Icon(
                Icons.my_library_books_outlined,
                size: 40,
                color: Colors.white,
              )),
          Positioned(
              top: size.width * 1.62,
              left: size.width * 0.73,
              child: const Icon(
                Icons.settings,
                size: 40,
                color: Colors.white,
              )),
        ],
      )),
    );
  }
}
