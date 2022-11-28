import 'package:flutter/material.dart';
import 'package:life_notes/pages/Corte.dart';
import 'package:life_notes/widgets/circle.dart';

class Cuatris extends StatefulWidget {
  Cuatris({Key? key}) : super(key: key);

  @override
  State<Cuatris> createState() => _CuatrisState();
}

class _CuatrisState extends State<Cuatris> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 1;
    final double leftRight = size.width * 0.05;
    final double toplist =  size.width * 0.33;
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
          child: SizedBox(
        child: Stack(
          children: [
            Positioned(
                top: -circleSize * 0.85,
                left: -circleSize * 0.6,
                child: circle(
                  size: circleSize,
                )),
            Positioned(
                top: -circleSize * 0.68,
                right: -circleSize * 0.74,
                child: circle(size: circleSize)),
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
                top: size.width * 0.25,
                left: size.width * 0.05,
                child: const Text(
                  "Cuatrimestres",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w700),
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: toplist, left: leftRight, right: leftRight),
              child: ListView(
                children: [
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Noveno cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Octavo cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Septimo cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Sexto cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Quinto cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Cuarto cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Tercero cuatrimestre',
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Segundo cuatrimestre',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
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
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Corte()));
                          },
                          child: const Text(
                            'Primer cuatrimestre',
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
        ),
      )),
    );
  }
}
