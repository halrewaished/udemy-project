import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/logic/controllers/auth_controller.dart';
import 'package:udemy_project/utils/theme.dart';
import 'package:udemy_project/view/widgets/auth/auth_button.dart';

import '../../../utils/my_string.dart';
import '../../widgets/auth/auth_text_from_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyColor,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Forgot Password',
            style: TextStyle(
              color: Get.isDarkMode ? kColor6 : pinkColor,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Get.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.close_rounded,
                        color: Get.isDarkMode ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'If you want to recover your account, then please provide your email ID below..',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/forgetpass copy.png',
                    width: 350,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AuthTextFromField(
                    controller: emailController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value)) {
                        return "Invalid email";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: Image.asset(
                      'assets/images/email.png',
                      color: Get.isDarkMode ? kColor6 : pinkColor,
                    ),
                    suffixIcon: const Text(""),
                    hintText: "Email",
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GetBuilder<AuthController>(
                      builder: (_) {
                        return AuthButton(
                            text: 'Send',
                            onPressed: () {

                              if(formKey.currentState!.validate()){
                                String email = emailController.text.trim();
                                controller.resetPassword(email);
                              }
                            });
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
