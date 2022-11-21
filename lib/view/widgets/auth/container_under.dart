import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/utils/theme.dart';
import 'package:udemy_project/view/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textType;

  ContainerUnder(
      {required this.text,
      required this.onPressed,
      required this.textType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? kColor6 : pinkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
              text: text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Colors.white : Colors.white,
              underLine: TextDecoration.none),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(
                text: textType,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? Colors.white : Colors.white,
                underLine: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
