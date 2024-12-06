import 'dart:async';
import 'dart:ffi';

import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';

class SplashServices {
  void isLogin(BuildContext context) async {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.homeScreen);
    });
  }
}
