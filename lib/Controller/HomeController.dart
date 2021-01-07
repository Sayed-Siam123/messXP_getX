import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  RxBool today_status = false.obs;
  RxBool weekly_status = false.obs;
  RxBool monthly_status = false.obs;
  RxBool brkfst = false.obs;
  RxBool lunch = false.obs;
  RxBool dinner = false.obs;
  RxBool wasButtonClicked;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

}