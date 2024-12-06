import 'package:flutter/material.dart';

class circleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: [
      CircleAvatar(
        backgroundColor: Colors.grey.shade400,
        //backgroundImage: AssetImage("assets/logo.jpeg"),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: size.height * .09,
        ),
        radius: size.height * .06,
      ),
      Positioned(
          left: size.width * 0.035,
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade400,
            //backgroundImage: AssetImage("assets/logo.jpeg"),
            child: Icon(
              Icons.add_a_photo,
              color: Colors.white,
              size: size.height * .017,
            ),
            radius: size.height * .015,
          ))
    ]);
  }
}
