import 'package:chatapp/res/components/text.dart';
import 'package:flutter/material.dart';

class profile_appbar extends StatelessWidget {
  const profile_appbar({Key? key}) : super(key: key);

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
            width: size.width * 0.33,
          ),
          text(
              a: size.width * 0.056,
              tex: "Profile",
              col: Colors.black,
              font: FontWeight.bold),
          SizedBox(
            width: size.width * 0.17,
          ),
          Icon(
            Icons.settings,
            color: Colors.grey.shade800,
          ),
          SizedBox(
            width: size.width * 0.04,
          ),
          text(
              a: size.width * 0.043,
              tex: "Save",
              col: Colors.blue,
              font: FontWeight.bold),
        ],
      ),
    );
  }
}
