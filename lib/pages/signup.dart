import 'package:flutter/material.dart';
import 'package:life_notes/pages/Login.dart';
import 'package:life_notes/widgets/circle.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _apellido1 = TextEditingController();
  final _user = TextEditingController();

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
                top: -circleSize * 0.77,
                right: -circleSize * 0.49,
                child: circle(
                  size: circleSize,
                )),
            Positioned(
                top: circleSize * 2.05,
                left: circleSize * 0.01,
                child: circle(size: circleSize)),
            Positioned(
              top: size.width * 0.18,
              left: size.width * 0.35,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Registrarse",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.35,
              left: size.width * 0.1,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Nombre",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.44,
              left: size.width * 0.1,
              width: size.width * 0.8,
              height: size.width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 228, 228),
                    border: Border.all(width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _name,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: "    Nombres",
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.58,
              left: size.width * 0.1,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Apellidos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.67,
              left: size.width * 0.1,
              width: size.width * 0.8,
              height: size.width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 228, 228),
                    border: Border.all(width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _apellido1,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: "   Apellidos",
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.81,
              left: size.width * 0.1,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Correo electrónico",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 0.9,
              left: size.width * 0.1,
              width: size.width * 0.8,
              height: size.width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 228, 228),
                    border: Border.all(width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _apellido1,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: "   Correo electrónico",
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.04,
              left: size.width * 0.1,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Contraseña",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.13,
              left: size.width * 0.1,
              width: size.width * 0.8,
              height: size.width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 228, 228),
                    border: Border.all(width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _apellido1,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: "   Contraseña",
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.27,
              left: size.width * 0.1,
              child: const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Nombre de usuario",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
              top: size.width * 1.36,
              left: size.width * 0.1,
              width: size.width * 0.8,
              height: size.width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 228, 228),
                    border: Border.all(width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _apellido1,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    labelText: "   Nombre de usuario",
                  ),
                ),
              ),
            ),
            Positioned(
                top: size.width * 1.54,
                left: size.width * 0.19,
                width: size.width * 0.61,
                height: size.width * 0.14,
                child: Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        minimumSize: const Size(350.0, 50.0),
                        primary: Colors.white,
                        backgroundColor: const Color(0xffFC3D68),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )),
                )),
          ],
        ),
      )),
    );
  }
}
