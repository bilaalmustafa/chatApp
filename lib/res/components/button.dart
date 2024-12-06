import 'package:flutter/material.dart';
class buttn extends StatelessWidget {
  String tx;
  Color color;
  Color clr;
  double sze;
  double heigt;
  double widh;
  Color shadeclr;
  buttn({
    required this.clr,
    required this.tx,
    required this.sze,
    required this.heigt,
    required this.widh,
    required this.color,
    required this.shadeclr,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: heigt,
      width:widh,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:shadeclr,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),

        ],
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(child: Text(tx,style: TextStyle(color: clr,fontSize: sze),)),

    );
  }
}
