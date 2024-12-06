import 'package:flutter/material.dart';

class text extends StatelessWidget {
  String tex;
  Color col;
  FontWeight font;
  double a;

  text({
    required this.a,
    required this.tex,
    required this.col,
    required this.font,

  });

  @override
  Widget build(BuildContext context) {
    return Text(tex,style: TextStyle(
      color: col,
      fontWeight: font,
      fontSize: a,

    ),);
  }
}