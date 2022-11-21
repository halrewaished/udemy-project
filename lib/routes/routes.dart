import 'package:get/get.dart';
import 'package:udemy_project/logic/bindings/main_binding.dart';
import 'package:udemy_project/logic/bindings/product_binding.dart';
import 'package:udemy_project/view/screens/auth/forgot_password_screen.dart';
import 'package:udemy_project/view/screens/auth/login_screen.dart';
import 'package:udemy_project/view/screens/auth/signup_screen.dart';
import 'package:udemy_project/view/screens/cart_screen.dart';
import 'package:udemy_project/view/screens/main_screen.dart';
import '../logic/bindings/auth_bindnig.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute:
  static const welcome = Routes.welcomeScreen;
  static const mainScreen = Routes.mainScreen;

  //getPages:
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';

}
