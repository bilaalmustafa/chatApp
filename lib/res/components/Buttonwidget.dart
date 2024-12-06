import 'package:flutter/material.dart';



class RoundButton extends StatelessWidget {
   RoundButton({super.key, required this.buttontext, required this.color,  this.loading=false, required this.onTap});
  final String buttontext;
  final Color color;
  bool loading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * 0.075,
        width: size.width * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: color,
            boxShadow:const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 3,
                spreadRadius: 0.5,
                offset:  Offset(0, 4),
              ),
            ]),
        child: Center(
            child:loading? const LinearProgressIndicator(): Text(
          buttontext,
          style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.06,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
