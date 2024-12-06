import 'package:chatapp/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void fieldFocus(
      BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static void toastMessage(String message) {
    Fluttertoast.showToast(msg: message,
    backgroundColor: AppColors.primaryColor,
    textColor: AppColors.whiteColor,
    gravity: ToastGravity.BOTTOM
    );
  }
}
