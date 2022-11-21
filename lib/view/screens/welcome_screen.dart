import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/routes/routes.dart';
import 'package:udemy_project/view/widgets/text_utils.dart';
import '../../utils/theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 320,
                  ),
                  Container(
                    height: 60,
                    width: 200,
                    // decoration: BoxDecoration(
                    //     color: Colors.black.withOpacity(0.1),
                    //     borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: TextUtils(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        underLine: TextDecoration.none,
                        text: 'Welcome to',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 60,
                    width: 270,
                    // decoration: BoxDecoration(
                    //     color: Colors.black.withOpacity(0.1),
                    //     borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils(
                          text: "Online shopping",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: kColor6,
                          underLine: TextDecoration.none,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 270,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kColor6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    ),
                    onPressed: () {
                      Get.offNamed(Routes.loginScreen);
                    },
                    child: TextUtils(
                        text: "Get Started",
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      underLine: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                        text: "Don't have an Account?",
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        underLine: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signUpScreen);
                        },
                        child: TextUtils(
                          text: "Sign Up",
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          underLine: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
