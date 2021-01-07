import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/Util/Constants.dart';
import 'package:messXP_getX/Util/Loader.dart';

import 'HomeController.dart';

class LoginController extends GetxController{
  RxBool checkStatus_manager = false.obs;
  RxBool checkStatus_member = false.obs;

  RxBool isLoading = false.obs;


  final email = new TextEditingController();
  final pass = new TextEditingController();

  // ignore: non_constant_identifier_names
  UserLogin() async{
    Utils().HideKeyboard();
    isLoading.value = true;
    if(isLoading.value == true){
      Get.dialog(Loader(text: "Logging in...",),barrierDismissible: false);
      print(email.value.toString()+isLoading.value.toString());
      await Future.delayed(Duration(seconds: 2));
      isLoading.value = false;
    }
    if(isLoading.value == false){
      Navigator.of(Get.context).pop(); //dismissing dialog
      Utils().showSnack(title: "Login",message: "Logged in successfully");
      print(email.value.toString()+isLoading.value.toString());
      Get.toNamed("/home");
    }
  }
}