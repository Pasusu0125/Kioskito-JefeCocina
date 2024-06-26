import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ContenedorTexto extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final double maxF;
  final double minF;
  final int maxL;
  final Alignment posicionText;
  final style;
  const ContenedorTexto(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.maxF,
      required this.minF,
      required this.maxL,
      required this.posicionText,
      this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 193, 7),
      alignment: posicionText,
      width: width,
      height: height,
      child: AutoSizeText(
        text,
        maxLines: maxL,
        maxFontSize: maxF,
        minFontSize: minF,
        style: style,
      ),
    );
  }
}
