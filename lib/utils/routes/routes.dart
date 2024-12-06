import 'package:chatapp/View/auth_Screens/Sign_in.dart';
import 'package:chatapp/View/auth_Screens/sign_up.dart';
import 'package:chatapp/View/home.dart';
import 'package:chatapp/View/splashscreen.dart';
import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const Splashscreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const home());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (context) => const Sign_up());
      case RoutesName.signInScreen:
        return MaterialPageRoute(builder: (context) => const Sign_in());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('no routes define'),
                  ),
                ));
    }
  }
}
