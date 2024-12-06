import 'package:chatapp/res/components/text.dart';
import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  String txt;
  appbar({
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 1.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.04,
            ),
            Icon(
              Icons.arrow_back_ios,
              size: 23,
            ),
            SizedBox(
              width: size.width * 0.25,
            ),
            text(
                a: size.width * 0.056,
                tex: txt,
                col: Colors.black,
                font: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
