import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messXP_getX/Controller/HomeController.dart';


class DrawerWidget extends StatelessWidget {
  final homeController = Get.put(HomeController());


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

  //SessionManager prefs = SessionManager();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Mess Management',style: GoogleFonts.poppins(
              fontSize: 20,
            ),),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),


          // ListTile(
          //   title: Text('Home',style: GoogleFonts.exo2(
          //     textStyle: TextStyle(
          //       fontSize: 20,
          //       color: Colors.black,
          //     ),
          //   ),),
          //   trailing:  new Icon(Icons.arrow_forward),
          //   onTap: () {
          //     // Update the state of the app.
          //     // ...
          //
          //     pushNewScreen(
          //       context,
          //       screen: HomePage(),
          //       withNavBar: true, // OPTIONAL VALUE. True by default.
          //       pageTransitionAnimation: PageTransitionAnimation.cupertino,
          //     );
          //
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => ResignationPage()),
          //     );
          //
          //
          //   },
          // ),

          ListTile(
            title: Text('Event Celebration',style: GoogleFonts.exo2(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            trailing:  new Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...

            },
          ),

          ListTile(
            title: Text('Bazar Schedule', style: GoogleFonts.exo2(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            trailing:  new Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),

          ListTile(
            title: Text('Logout',style: GoogleFonts.exo2(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            trailing:  new Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...
              //logout();

              // Timer(Duration(milliseconds: 50), () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => LoginPage(status: false,)),
              //   );
              // });

            },
          ),
        ],
      ),
    );
  }

// void logout() async {
//   userbloc.dispose();
//   prefs.setData(loginKey,null);
//   prefs.setData(loginName,null);
//   prefs.setData(userDesignation,null);
//   prefs.setData(PresentStatus,null);
//   prefs.setData(LateStatus,null);
//   prefs.setData(Intimes,null);
//   prefs.setData(MonthPresent,null);
//   prefs.setData(MonthAbesnt,null);
//   prefs.setData(MonthLeave,null);
//   prefs.setData(MonthLate,null);
//
//   print("LOgged out");
//
// }


}
