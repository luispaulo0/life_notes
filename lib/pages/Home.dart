import 'package:flutter/material.dart';
import 'package:life_notes/pages/Cuatris.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
              top: size.width * 0.05,
              left: size.width * 0.05,
              child: Container(
                width: size.width * 0.9,
                height: size.width * 0.12,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _search,
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      labelText: "   Buscar",
                      icon: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.search, color: Color(0xff130177)),
                      )),
                ),
              )),
          Positioned(
              top: size.width * 0.2,
              left: size.width * 0.05,
              child: const Text(
                "Carreras disponibles",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: size.width * 0.3,
              left: size.width * 0.05,
              child: SizedBox(
                width: size.width * 0.9,
                height: size.width * 0.4,
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Software",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Agroindustrial",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Biomedica",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Mecatronica",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Energía",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Tecnologia Ambiental",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Petrolera",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Nano Tecnología",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Administración de empresas",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuatris()));
                      },
                      child: const Text(
                        "Manofactura",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Agroindustrial",
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 71, 71),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: size.width * 0.72,
              left: size.width * 0.05,
              child: const Text(
                "Sugerencias de materias",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: size.width * 0.82,
              left: size.width * 0.05,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Matematicas Discretas',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
              top: size.width * 0.82,
              left: size.width * 0.5,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Física',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
              top: size.width * 1.02,
              left: size.width * 0.05,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Algoritmos',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
              top: size.width * 1.02,
              left: size.width * 0.5,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Química',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
              top: size.width * 1.22,
              left: size.width * 0.05,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Inteligencía Artificial',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
              top: size.width * 1.22,
              left: size.width * 0.5,
              width: size.width * 0.42,
              child: Container(
                height: size.width * 0.18,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff130177)),
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
                    onPressed: () {},
                    child: const Text(
                      'Algebra Líneal',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
              )),
          Positioned(
            bottom: -circleSize * .045,
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
              top: size.width * 0.2,
              left: size.width * 0.05,
              child: Container()),
          Positioned(
              bottom: size.width * .02,
              left: size.width * 0.44,
              child: const Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              )),
          Positioned(
              bottom: size.width * .02,
              left: size.width * 0.13,
              child: const Icon(
                Icons.my_library_books_outlined,
                size: 40,
                color: Colors.white,
              )),
          Positioned(
              bottom: size.width * .02,
              left: size.width * 0.73,
              child: const Icon(
                Icons.settings,
                size: 40,
                color: Colors.white,
              )),
        ],
      ))),
    );
  }
}
