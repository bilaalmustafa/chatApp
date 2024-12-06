import 'package:chatapp/res/colors.dart';
import 'package:chatapp/res/components/Buttonwidget.dart';
import 'package:chatapp/utils/routes/routes_name.dart';
import 'package:chatapp/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/components/appbar.dart';
import '../../res/components/button.dart';
import '../../res/components/circleavatar.dart';
import '../../res/components/text.dart';
import '../../res/components/textfeild.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final nameControlor = TextEditingController();
  final emailControlor = TextEditingController();
  final passwordControlor = TextEditingController();
  final confrimpasswordControlor = TextEditingController();

  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameControlor.dispose();
    emailControlor.dispose();
    passwordControlor.dispose();
    confirmPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appbar(txt: "Sign Up as Talent"),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width,
                height: size.height * 0.88,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      circleAvatar(),
                      SizedBox(
                        height: size.height * 0.040,
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              textfield(
                                controller: nameControlor,
                                focusNode: nameFocusNode,
                                icn: Icon(Icons.person),
                                txt: "First Name",
                                colr: Colors.grey,
                                onFieldSubmmited: (value) {
                                  Utils.fieldFocus(
                                      context, nameFocusNode, emailFocusNode);
                                },
                                  onValidator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name.';
                                }
                                return null;
                              },
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
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
                                  return null;
                              },
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              textfield(
                                controller: passwordControlor,
                                focusNode: passwordFocusNode,
                                icn: Icon(Icons.lock),
                                txt: "Password",
                                colr: Colors.grey,
                                onFieldSubmmited: (value) {
                                  Utils.fieldFocus(context, passwordFocusNode,
                                      confirmPasswordFocusNode);
                                },
                                  onValidator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters.';
                                }
                                return null;
                              },
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              textfield(
                                controller: confrimpasswordControlor,
                                focusNode: confirmPasswordFocusNode,
                                icn: Icon(Icons.lock),
                                txt: "Confirm Password",
                                colr: Colors.grey,
                                onFieldSubmmited: (value) {},
                                onValidator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password.';
                                  }
                                  if (value != passwordControlor.text) {
                                    return 'Passwords do not match.';
                                  }
                                     return null;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text(
                              a: 13,
                              tex: "By pressing on sign up, you agree to our ",
                              col: Colors.grey.shade700,
                              font: FontWeight.normal),
                          text(
                              a: 14,
                              tex: "Terms of Use ",
                              col: Colors.blue,
                              font: FontWeight.normal),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.036,
                      ),
                      RoundButton(
                        loading: false,
                        buttontext: "Sign Up",
                        color: AppColors.primaryColor2,
                        onTap: () {
                            if( _formKey.currentState!.validate()){

                              }
                          // Navigator.pushNamed(
                          //     context, RoutesName.signInScreen);
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                                color: AppColors.primaryTextTextColor,
                                fontSize: 15),
                          ),
                          InkWell(
                            onTap: () {
                            
                              Navigator.pushNamed(
                                  context, RoutesName.signInScreen);
                            },
                            child: const Text(
                              "Sign In",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
