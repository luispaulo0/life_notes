import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:life_notes/pages/Publicaciones.dart';

class Publicar extends StatefulWidget {
  Publicar({Key? key}) : super(key: key);

  @override
  State<Publicar> createState() => _PublicarState();
}

class _PublicarState extends State<Publicar> {
  String? imagePath;
  final _tema = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double circleSize = size.width * 1;

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
              top: size.width * 0.13,
              left: size.width * 0.05,
              child: const Text(
                "Publicar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: size.width * 0.23,
              left: size.width * 0.05,
              width: size.width * 0.9,
              height: size.width * 0.46,
              child: GestureDetector(
                onTap: () async {
                  final ImagePicker _picker = ImagePicker();
                  PickedFile? _pickedFile =
                      await _picker.getImage(source: ImageSource.gallery);

                  imagePath = _pickedFile!.path;
                  setState(() {});
                },
                child: Container(
                    decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: const Color(0xff130177)),
                )),
              )),
          Positioned(
              top: size.width * 0.23,
              left: size.width * 0.05,
              width: size.width * 0.9,
              height: size.width * 0.46,
              child: (imagePath == null)
                  ? Container()
                  : Image.file(File(imagePath!))),
          Positioned(
              top: size.width * 0.73,
              left: size.width * 0.05,
              child: const Text(
                "Tema",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
            top: size.width * 0.8,
            left: size.width * 0.05,
            width: size.width * 0.9,
            height: size.width * 0.12,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border:
                      Border.all(width: 1.5, color: const Color(0xff130177)),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: TextField(
                textAlign: TextAlign.center,
                controller: _tema,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  labelText: "   Tema",
                ),
              ),
            ),
          ),
          Positioned(
              top: size.width * .95,
              left: size.width * 0.05,
              child: const Text(
                "Descripción",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              )),
          Positioned(
            top: size.width * 1.02,
            left: size.width * 0.05,
            width: size.width * 0.9,
            height: size.width * 0.32,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border:
                      Border.all(width: 1.5, color: const Color(0xff130177)),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: TextField(
                textAlign: TextAlign.center,
                controller: _tema,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  labelText: "   Descripción",
                ),
              ),
            ),
          ),
          Positioned(
            top: size.width * 1.36,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => publicaciones()));
                  },
                  child: const Text(
                    'Publicar',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )),
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
