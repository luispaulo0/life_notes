import 'package:flutter/material.dart';
import 'package:life_notes/pages/Publicar.dart';

class publicaciones extends StatefulWidget {
  publicaciones({Key? key}) : super(key: key);

  @override
  State<publicaciones> createState() => _publicacionesState();
}

class _publicacionesState extends State<publicaciones> {
  final _comment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 1;
    final double leftRight = size.width * 0.05;
    final double toplist = size.width * 0.26;
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
              top: size.width * 0.08,
              left: size.width * 0.4,
              child: const Text(
                "Corte 1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: size.width * 0.06,
              left: size.width * 0.7,
              child: Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      minimumSize: const Size(20.0, 30.0),
                      primary: Colors.white,
                      backgroundColor: const Color(0xffFC3D68),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Publicar()));
                    },
                    child: const Text(
                      'Publicar',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    )),
              )),
          Positioned(
              top: size.width * 0.18,
              left: size.width * 0.05,
              child: const Text(
                "Publicaciones",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Padding(
            padding: EdgeInsets.only(
                top: toplist, left: leftRight, right: leftRight, bottom: 100),
            child: Container(
              width: size.width * 0.9,
              //height: size.width * 1.3,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xff130177)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: ListView(
                children: [
                  Container(
                    height: size.width * 0.12,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xff130177),
                    ),
                    child: const Text(
                      "Tema: Maquina de Turing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "@LuisPaulo",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 10),
                        child: Text(
                          "Publicado hace 2h",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Text(
                        "Les dejo este ejercicio de maquina de turing por si les sirve de guía"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: size.width * 0.6,
                      width: size.width * 0.7,
                      child: Image.asset('assets/images/imagen1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: size.width * 0.9,
                      height: size.width * 0.12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 2, color: const Color(0xff130177)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: _comment,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          labelText: "   Agrega un comentario",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      height: size.width * 0.2,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 190, top: 5),
                            child: Text(
                              "@LuisEduardo",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50, top: 5),
                            child: Text(
                              "No tienes mas ejemplos como este?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 190, top: 5),
                            child: Text(
                              "Responder",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 10, bottom: 10),
                    child: Container(
                      height: size.width * 0.2,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 190, top: 5),
                            child: Text(
                              "@LuisPaulo",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 120, top: 5),
                            child: Text(
                              "Mas tarde subo mas",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 190,
                              top: 5,
                            ),
                            child: Text(
                              "Responder",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
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
      )),
    );
  }
}
