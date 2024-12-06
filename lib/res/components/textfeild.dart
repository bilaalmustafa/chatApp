import 'package:chatapp/res/colors.dart';
import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  Icon icn;
  String txt;
  Color colr;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String)? onFieldSubmmited;
  final String? Function(String?)? onValidator;
  textfield({
    required this.icn,
    required this.txt,
    required this.colr,
    required this.controller,
    required this.focusNode,
    required this.onFieldSubmmited,
    required this.onValidator,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmmited,
        validator: onValidator,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.dividedColor,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: txt,
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: colr, fontSize: 14), //Colors.grey,

          prefixIcon: icn,
        ),
      ),
    );
  }
}
