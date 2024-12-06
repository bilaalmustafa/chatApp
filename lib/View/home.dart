import 'package:chatapp/res/colors.dart';
import 'package:chatapp/res/components/Buttonwidget.dart';
import 'package:chatapp/View/splashscreen.dart';
import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: size.height * 0.15,
          ),
          Container(
              height: 400, width: 200, child: Image.asset("assets/logo.png")),
          SizedBox(
            height: size.height * 0.08,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Splashscreen()));
            },
            child: RoundButton(
              buttontext: "Sign In",
              color: AppColors.primaryColor,
              onTap: () {
                Navigator.pushNamed(context, RoutesName.signInScreen);
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundButton(
            buttontext: "Sign Up as Talent",
            color: AppColors.primaryColor2,
            onTap: () {
              Navigator.pushNamed(context, RoutesName.signUpScreen);
            },
          )
        ]),
      ),
    );
  }
}
