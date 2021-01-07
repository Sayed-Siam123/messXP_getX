import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messXP_getX/Controller/RegisterController.dart';
import 'package:messXP_getX/Util/Constants.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(RegisterController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).buttonColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: GetX<RegisterController>(
                init: RegisterController(),
                builder: (controller) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 30,left: 10,right: 10),
                    width: constraints.maxWidth,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Image.asset(
                            "assets/images/logo2.png",
                            height: 50,
                          ),
                        ),
                        Text(
                          "MessXp",
                          style: TextStyle(
                              color: Colors.yellow.shade700,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.yellow.shade500),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: TextField(
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  controller: registerController.name,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Name",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle:
                                      TextStyle(fontSize: 12, color: Colors.white),
                                    ),
                                    // errorText: _validate2 == false
                                    //     ? errortext2
                                    //     : null,
                                  ),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.yellow.shade500),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: TextField(
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  controller: registerController.email,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle:
                                      TextStyle(fontSize: 12, color: Colors.white),
                                    ),
                                    // errorText: _validate2 == false
                                    //     ? errortext2
                                    //     : null,
                                  ),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                "Phone Number",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.yellow.shade500),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: TextField(
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  controller: registerController.phone,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Phone Number",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle:
                                      TextStyle(fontSize: 12, color: Colors.white),
                                    ),
                                    // errorText: _validate2 == false
                                    //     ? errortext2
                                    //     : null,
                                  ),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.yellow.shade500),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: TextField(
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  controller: registerController.pass,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Password*",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle:
                                      TextStyle(fontSize: 12, color: Colors.white),
                                    ),
                                    // errorText: _validate2 == false
                                    //     ? errortext2
                                    //     : null,
                                  ),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                "Confirm Password",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.yellow.shade500),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: TextField(
                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                  controller: registerController.c_pass,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Confirm Password",
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle:
                                      TextStyle(fontSize: 12, color: Colors.white),
                                    ),
                                    // errorText: _validate2 == false
                                    //     ? errortext2
                                    //     : null,
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircularCheckBox(
                                      value: registerController.checkStatus_manager.value,
                                      checkColor: Colors.white,
                                      activeColor: Colors.yellow.withOpacity(0.5),
                                      inactiveColor: Colors.yellow,
                                      onChanged: (value) {
                                        registerController.checkStatus_manager.value = value;
                                        registerController.checkStatus_member.value = false;
                                      },
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      MaterialCommunityIcons.chess_king,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Manager",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    CircularCheckBox(
                                      value: registerController.checkStatus_member.value,
                                      checkColor: Colors.white,
                                      activeColor: Colors.yellow.withOpacity(0.5),
                                      inactiveColor: Colors.yellow,
                                      onChanged: (value) {
                                        registerController.checkStatus_member.value = value;
                                        registerController.checkStatus_manager.value = false;
                                      },
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      MaterialCommunityIcons.account,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Member",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                registerController.UserRegistration();
                              },
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       blurRadius: 5.0,
                                  //       spreadRadius: 5.0,
                                  //       offset: Offset(1, 1),
                                  //       color: Colors.grey.shade600
                                  //           .withOpacity(0.1)),
                                  // ],
                                ),
                                child: Center(
                                  child: Text(
                                    "REGISTER",
                                    style: TextStyle(color: Colors.black87, fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    print("Register page route");
                                    Get.offNamed("/login");
                                  },
                                  child: Text(
                                    "Login here",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },

              ),
            ),
          );
        },
      ),
    );
  }
}
