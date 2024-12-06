
import 'package:chatapp/res/components/text.dart';
import 'package:flutter/material.dart';

class listvie extends StatelessWidget {
  const listvie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      color: Colors.white,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    text(
                        a: 16,
                        tex: "35 sec",
                        col: Colors.black,
                        font: FontWeight.w500),
                    SizedBox(
                      width: size.width * 0.58,
                    ),
                    text(
                        a: 15,
                        tex: "Free",
                        col: Colors.black,
                        font: FontWeight.w500),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.027,
                ),
                Container(
                  height: 0.4,
                  width: size.width,
                  color: Colors.grey.shade500,
                ),
                SizedBox(
                  height: size.height * 0.027,
                ),
              ],
            );
          }),
    );
  }
}
