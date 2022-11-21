import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/utils/theme.dart';
import 'package:udemy_project/view/widgets/text_utils.dart';

class AuthButton extends StatelessWidget {

  final String text;
  final Function() onPressed;

  const AuthButton({
    required this.text,
    required this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Get.isDarkMode ? kColor6 : pinkColor,
        minimumSize: const Size(360, 50),
      ),
      child: TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underLine: TextDecoration.none),
    );
  }
}
