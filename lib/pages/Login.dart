import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:life_notes/widgets/circle.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _homeState();
}

class _homeState extends State<login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  bool isChecked = false;
  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 0.85;
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(children: [
                Positioned(
                    top: -circleSize * 0.67,
                    left: -circleSize * 0.59,
                    child: circle(
                      size: circleSize,
                    )),
                Positioned(
                    top: circleSize * 1.84,
                    right: -circleSize * 0.54,
                    child: circle(size: circleSize)),
                Positioned(
                  top: size.width * 0.25,
                  left: size.width * 0.15,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Iniciar sesión",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  top: size.width * 0.38,
                  left: size.width * 0.14,
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
                  top: size.width * 0.47,
                  left: size.width * 0.13,
                  width: size.width * 0.76,
                  height: size.width * 0.14,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 228, 228),
                          border: Border.all(width: 0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: _email,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          labelText: "    Correo electrónico",
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.width * 0.64,
                  left: size.width * 0.14,
                  child: const Text(
                    "Contraseña",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: size.width * 0.73,
                  left: size.width * 0.13,
                  width: size.width * 0.76,
                  height: size.width * 0.14,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 228, 228),
                        border: Border.all(width: 0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _password,
                      obscureText: isHidePassword,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              isHidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            )),
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        labelText: "    Contraseña",
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: size.width * 0.91,
                    left: size.width * 0.13,
                    width: size.width * 0.76,
                    height: size.width * 0.14,
                    child: Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          minimumSize: const Size(350.0, 50.0),
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 40, 63, 174),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 35, 0),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                width: size.width * 0.05,
                                height: size.width * 0.05,
                              ),
                            ),
                            const Text(
                              'Continuar con Facebook',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: size.width * 1.08,
                    left: size.width * 0.13,
                    width: size.width * 0.76,
                    height: size.width * 0.14,
                    child: Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          minimumSize: const Size(350.0, 50.0),
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 70, 101, 255),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 35, 0),
                              child: Image.asset(
                                'assets/images/logotipo-de-google-glass.png',
                                width: size.width * 0.05,
                                height: size.width * 0.05,
                              ),
                            ),
                            const Text(
                              'Continuar con Google',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: size.width * 1.28,
                    left: size.width * 0.185,
                    width: size.width * 0.65,
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
                          onPressed: () {},
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          )),
                    )),
                Positioned(
                    top: size.width * 1.44,
                    left: size.width * 0.185,
                    width: size.width * 0.65,
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
                          onPressed: () {},
                          child: const Text(
                            'Registrarse',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          )),
                    )),
              ]))),
      backgroundColor: Color(0xff130177),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
