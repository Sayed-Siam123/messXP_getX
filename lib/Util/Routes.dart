import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:messXP_getX/UI/Home/HomePage.dart';
import 'package:messXP_getX/UI/LoginPage/LoginPage.dart';
import 'package:messXP_getX/UI/RegistrationPage/RegistrationPage.dart';

class Routes{

  static final route = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/registration',
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
    ),
  ];

}