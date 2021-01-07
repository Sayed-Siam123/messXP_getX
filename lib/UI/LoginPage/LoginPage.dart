import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:messXP_getX/Controller/LoginController.dart';
import 'package:messXP_getX/Util/Loader.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).buttonColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return FittedBox(
            fit: BoxFit.contain,
            child: Container(
              alignment: Alignment.center,
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Container(
                  child: GetX<LoginController>(
                      init: LoginController(),
                      builder: (api) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            width: constraints.maxWidth,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
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
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Text(
                                        "UserID",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow.shade500),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                        padding:
                                        const EdgeInsets.fromLTRB(3, 3, 1, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border:
                                          Border.all(color: Colors.yellow),
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
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                          controller: loginController.email,
                                          enabled: true,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            hintText: "Phone number or code*",
                                            hintStyle: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
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
                                      padding: const EdgeInsets.only(
                                          left: 10, bottom: 10),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.yellow.shade500),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                        padding:
                                        const EdgeInsets.fromLTRB(3, 3, 1, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border:
                                          Border.all(color: Colors.yellow),
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
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                          controller: loginController.pass,
                                          enabled: true,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            hintText: "Password*",
                                            hintStyle: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                            // errorText: _validate2 == false
                                            //     ? errortext2
                                            //     : null,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            CircularCheckBox(
                                              value: loginController
                                                  .checkStatus_manager.value,
                                              checkColor: Colors.white,
                                              activeColor:
                                              Colors.yellow.withOpacity(0.5),
                                              inactiveColor: Colors.yellow,
                                              onChanged: (value) {
                                                print(value);
                                                loginController
                                                    .checkStatus_manager
                                                    .value = value;
                                                loginController.checkStatus_member
                                                    .value = false;
                                              },
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
                                              style:
                                              TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            CircularCheckBox(
                                              value: loginController
                                                  .checkStatus_member.value,
                                              checkColor: Colors.white,
                                              activeColor:
                                              Colors.yellow.withOpacity(0.5),
                                              inactiveColor: Colors.yellow,
                                              onChanged: (value) {
                                                print(value);
                                                loginController.checkStatus_member
                                                    .value = value;
                                                loginController
                                                    .checkStatus_manager
                                                    .value = false;
                                              },
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
                                              style:
                                              TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        onTap: () {
                                          loginController.UserLogin();
                                        },
                                        child: Center(
                                          child: Container(
                                            height: 45,
                                            width: double.infinity,
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 10, 10, 10),
                                            decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              border: Border.all(
                                                  color: Colors.yellow),
                                              borderRadius:
                                              BorderRadius.circular(10),
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
                                                "LOGIN",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15),
                                              ),
                                            ),
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
                                          "Don't you have an account?",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            print("Register page route");
                                            Get.toNamed("/registration");
                                          },
                                          child: Text(
                                            "Open Now",
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
                        }
                      ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
