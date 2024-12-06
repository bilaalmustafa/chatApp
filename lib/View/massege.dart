import 'package:chatapp/View/profile.dart';
import 'package:flutter/material.dart';

class massage extends StatefulWidget {
  const massage({Key? key}) : super(key: key);

  @override
  State<massage> createState() => _massageState();
}

class _massageState extends State<massage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Center(
            child: Text(
          "Massege Requests",
          style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.056,
              fontWeight: FontWeight.w400),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              icon: const Icon(
                Icons.account_circle,
                size: 27,
                color: Colors.black,
              ))
        ],
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.15, horizontal: size.width * 0.05),
              child: Text(
                "You have not received any request yet. If you have notification enabled,you will  receive a notification when a  request is made.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * 0.05, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height * 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.34,
                ),
                Container(
                    height: size.height * 0.04,
                    child: Image.asset("assets/txtlogo.png")),
                SizedBox(
                  width: size.width * 0.2,
                ),
                const Icon(
                  Icons.contact_support_outlined,
                  size: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
