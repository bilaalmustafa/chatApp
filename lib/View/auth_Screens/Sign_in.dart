import 'package:chatapp/res/colors.dart';
import 'package:chatapp/res/components/Buttonwidget.dart';
import 'package:chatapp/res/components/appbar.dart';
import 'package:chatapp/res/components/text.dart';
import 'package:chatapp/res/components/textfeild.dart';
import 'package:chatapp/View/massege.dart';
import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:chatapp/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../res/components/button.dart';
import '../../res/components/login_appbar.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {


    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailControlor = TextEditingController();
  final passwordControlor = TextEditingController();
  final confrimpasswordControlor = TextEditingController();


  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   
    emailControlor.dispose();
    passwordControlor.dispose();
   
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.white24,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.09,
                        width: size.width * 0.80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/txtlogo.png"),
                          fit: BoxFit.fill,
                        )),
                      ),
                      SizedBox(
                        height: size.height * 0.13,
                      ),

                      Form(child: Column(children: [
                           textfield(
                                controller: emailControlor,
                                focusNode: emailFocusNode,
                                icn: Icon(Icons.email),
                                txt: "Email",
                                colr: Colors.grey,
                                onFieldSubmmited: (value) {
                                  Utils.fieldFocus(context, emailFocusNode,
                                      passwordFocusNode);
                                },
                                 onValidator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email.';
                                }
                                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                  return 'Enter a valid email address.';
                                }
                                return '';
                              },
                              ),
                               SizedBox(
                        height: size.height * 0.035,
                      ),
                        textfield(
                                controller: passwordControlor,
                                focusNode: passwordFocusNode,
                                icn: Icon(Icons.lock),
                                txt: "Password",
                                colr: Colors.grey,
                                onFieldSubmmited: (value) {
                                  
                                },
                                  onValidator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters.';
                                }
                                return '';
                              },
                              ),
                      ],),),
                      
                    
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width - 200),
                        child: text(
                            a: 14,
                            tex: "Forgot Password?",
                            col: Colors.blue,
                            font: FontWeight.normal),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      RoundButton(
                        buttontext: "Sign In",
                        color: AppColors.primaryColor,
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.signInScreen);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                color: AppColors.primaryTextTextColor,
                                fontSize: 15),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RoutesName.signUpScreen);
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryColor,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              appbar(txt: "Sign In"),
            ],
          ),
        ),
      ),
    );
  }
}
