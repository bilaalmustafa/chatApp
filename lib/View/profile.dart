import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/components/circleavatar.dart';
import '../res/components/listviewbulider.dart';
import '../res/components/profile_appbar.dart';
import '../res/components/switch.dart';
import '../res/components/text.dart';
import '../res/components/textfeild.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              profile_appbar(),
              SizedBox(
                height: size.height * 0.01,
              ),
               Container(
                  child: SingleChildScrollView(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        circleAvatar(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        // textfield(
                        //   icn: Icon(Icons.person_outline_outlined),
                        //   txt: "Usama",
                        //   colr: Colors.black,
                        // ),
                        // SizedBox(
                        //   height: size.height * 0.025,
                        // ),
                        // textfield(
                        //   icn: Icon(Icons.person_outline_outlined),
                        //   txt: "Hanif",
                        //   colr: Colors.black,
                        // ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.09,
                            ),
                            text(
                                a: size.width * 0.036,
                                tex: "Category: ",
                                col: Colors.grey.shade700,
                                font: FontWeight.normal),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            text(
                                a: size.width * 0.036,
                                tex: "Youtube ",
                                col: Colors.black,
                                font: FontWeight.normal),
                            SizedBox(
                              width: size.width * 0.4,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: size.width * 0.25,
                              right: size.width * 0.056),
                          height: 0.3,
                          width: size.width - 155,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.29,
                            ),
                            text(
                                a: size.width * 0.04,
                                tex: "Accepting new request?",
                                col: Colors.black,
                                font: FontWeight.normal),
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            swtch(),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * 0.76),
                          child: text(
                              a: size.width * 0.034,
                              tex: "About:",
                              col: Colors.grey.shade500,
                              font: FontWeight.normal),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * 0.6),
                          child: text(
                              a: size.width * 0.034,
                              tex: "Test Information",
                              col: Colors.black,
                              font: FontWeight.normal),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          height: 0.4,
                          width: size.width - 60,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            text(
                                a: 14,
                                tex: "Maximum cap of purchase / day:",
                                col: Colors.grey.shade600,
                                font: FontWeight.w500),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            text(
                                a: 14,
                                tex: "10",
                                col: Colors.black,
                                font: FontWeight.w700),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: 0.4,
                          width: size.width - 60,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.08,
                            ),
                            text(
                                a: 14,
                                tex: "Maximum cap of free purchase / day:",
                                col: Colors.grey.shade600,
                                font: FontWeight.w500),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            text(
                                a: 14,
                                tex: "unlimited",
                                col: Colors.black,
                                font: FontWeight.w700),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: 0.4,
                          width: size.width,
                          color: Colors.grey.shade500,
                        ),
                        Container(
                          height: size.height * 0.06,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border:
                                  Border(top: BorderSide(color: Colors.grey))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.069),
                                child: text(
                                    a: 16,
                                    tex: "Purchase Options",
                                    col: Colors.black,
                                    font: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: size.width * 0.054),
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.grey.shade700,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        listvie(),
                      ],
                    ),
                  ),
                  width: size.width,
                  height: size.height * 0.884),
            ],
          ),
        ),
      ),
    );
  }
}
