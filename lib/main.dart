import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/UI/RegistrationPage/RegistrationPage.dart';
import 'package:messXP_getX/Util/Routes.dart';
import 'package:splashscreen/splashscreen.dart';
import 'UI/LoginPage/LoginPage.dart';
import 'Util/Constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
  ));  //to make top statusbar color transperent in app

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
      .then((_) => runApp(DevicePreview(builder: (context) => MyApp(),enabled: !kReleaseMode,)));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/login",
      getPages: Routes.route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: white, //ash
        accentColor: text_color1, // blue
        hintColor: text_color2,
        buttonColor: loginregister_back,
        focusColor: dialog,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {

  //SessionManager prefs = SessionManager();

  String userid = "";

  String loginStatus = '';


  String loginKey = "loginKey";
  String useridKey = "userid";
  String loginName = "loginName";
  String userDesignation = "userDesignation";
  String PresentStatus = "PresentStatus";
  String LateStatus = "LateStatus";
  String Intimes = "Intimes";
  String MonthPresent = "MonthPresent";
  String MonthAbesnt = "MonthAbesnt";
  String MonthLeave = "MonthLeave";
  String MonthLate = "MonthLate";

//   void getLogin() async {
//     Future<String> serverip = prefs.getData(loginKey);
//     serverip.then((data) async {
//       debugPrint('login status pabo');
//       debugPrint("login status " + data.toString());
//
//       setState(() {
//         loginStatus = data.toString();
//       });
//       debugPrint(loginStatus.toString());
//
// //      Future.delayed(const Duration(milliseconds: 1000), () {
// //
// //      });
//     }, onError: (e) {
//       print(e);
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 4,
      title: Text("Mess Management"),
      navigateAfterSeconds: LoginPage(),
      //title: new Text('IDENTIT',textScaleFactor: 2,),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.black54,
    );
  }
}