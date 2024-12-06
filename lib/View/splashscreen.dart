import 'dart:async';

import 'package:chatapp/View/auth_Screens/Sign_in.dart';
import 'package:chatapp/View_model/services/Splash_Screen.dart';
import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import 'massege.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  @override
  State<Splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<Splashscreen> {
  SplashServices splashservices = SplashServices();
  @override
  void initState() {
    super.initState();
    splashservices.isLogin(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: 500,
          width: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/logo.png",
          ))),
        ));
  }
}
