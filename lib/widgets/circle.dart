import 'package:flutter/material.dart';

class circle extends StatelessWidget {
  final double size;

  // ignore: unnecessary_null_comparison
  const circle({Key? key, required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:
        const BoxDecoration(color: Color(0xffFC3D68), shape: BoxShape.circle ),
    );
  }
}
