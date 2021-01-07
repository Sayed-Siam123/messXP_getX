import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messXP_getX/Controller/HomeController.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AlertPopUp {
  // ignore: non_constant_identifier_names
  void showDialog_showqr() async {
    await showDialog<String>(
        context: Get.context,
        builder: (_) => LayoutBuilder(
              builder: (context, constraints) => StatefulBuilder(
                builder: (context, setState) {
                  return new AlertDialog(
                    contentPadding: EdgeInsets.only(right: 0),
                    backgroundColor:
                        Theme.of(context).focusColor.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    content: Builder(
                      builder: (context) {
                        return Container(
                          height: constraints.maxHeight / 1.5,
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    color:
                                        Colors.grey.shade700.withOpacity(0.5))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).focusColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    "My QR Code",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6)),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.0),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: QrImage(
                                    data: 'This is a simple QR code',
                                    foregroundColor:
                                        Colors.white.withOpacity(0.8),
                                    version: QrVersions.auto,
                                    size: 320,
                                    gapless: false,
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                  ),
                                ),
                              ),
                              Container(
                                width: constraints.maxWidth,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).focusColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Scan code for quick add",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ));
  }

  void showDialog_quickBazarEntry() async {
    await showDialog<String>(
        context: Get.context,
        builder: (_) => LayoutBuilder(
              builder: (context, constraints) => StatefulBuilder(
                builder: (context, setState) {
                  return FittedBox(
                    fit: BoxFit.contain,
                    child: new AlertDialog(
                      contentPadding: EdgeInsets.only(right: 0),
                      backgroundColor:
                          Theme.of(context).focusColor.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      content: Builder(
                        builder: (context) {
                          // Get available height and width of the build area of this widget. Make a choice depending on the size.
                          // var height = MediaQuery.of(context).size.height * .6;
                          // var width = MediaQuery.of(context).size.width * .95;

                          return Container(
                            height: constraints.maxHeight / 1.5,
                            width: constraints.maxWidth,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      color:
                                          Colors.grey.shade700.withOpacity(0.5))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).focusColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Quick Bazar Entry",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: constraints.maxWidth,
                                  height: constraints.maxHeight * 0.47,
                                  //color: Theme.of(context).focusColor.withOpacity(0.0),
                                  color: Colors.transparent,
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 0,
                                            ),
                                            child: Icon(
                                              FontAwesome.shopping_bag,
                                              color: Colors.yellow,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 15,
                                            ),
                                            child: Text(
                                              "Please input the total amount of today's bazar",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin:
                                              EdgeInsets.fromLTRB(25, 0, 25, 0),
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
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
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                            //controller: bazar_amount,
                                            enabled: true,
                                            decoration: InputDecoration(
                                                errorBorder:
                                                    new UnderlineInputBorder(
                                                        borderSide:
                                                            new BorderSide(
                                                  color: Colors.red,
                                                )),
                                                focusedBorder:
                                                    new UnderlineInputBorder(
                                                        borderSide:
                                                            new BorderSide(
                                                  color: Colors.yellow,
                                                )),
                                                enabledBorder:
                                                    new UnderlineInputBorder(
                                                        borderSide:
                                                            new BorderSide(
                                                  color: Colors.white,
                                                )),
                                                hintText: "Enter Bazar Amount",
                                                suffixIcon: Icon(
                                                  MaterialCommunityIcons
                                                      .currency_bdt,
                                                  color: Colors.white
                                                      .withOpacity(0.7),
                                                ),
                                                hintStyle: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white
                                                          .withOpacity(0.6)),
                                                ),
                                                // errorText: _validate2 == false
                                                //     ? errortext2
                                                //     : null,
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20)),
                                            keyboardType: TextInputType.number,
                                            cursorColor: Colors.yellow,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.contain,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.yellow,
                                                      shape: BoxShape.circle),
                                                  child: Icon(
                                                    MaterialCommunityIcons
                                                        .image_plus,
                                                    color: Colors.black87
                                                        .withOpacity(0.7),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                    "Upload Bazar List",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white
                                                          .withOpacity(0.6),
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).focusColor,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0)),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: constraints.maxWidth * 0.6,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Add to Bazar",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
            ));
  }

  showDialog_mealSchedule() async {
    final homeController = Get.put(HomeController());

    await showDialog<String>(
        context: Get.context,
        builder: (_) => LayoutBuilder(
              builder: (context, constraints) => StatefulBuilder(
                builder: (context, setState) {
                  return new AlertDialog(
                    contentPadding: EdgeInsets.only(right: 0),
                    backgroundColor:
                        Theme.of(context).focusColor.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    content: Builder(
                      builder: (context) {
                        // Get available height and width of the build area of this widget. Make a choice depending on the size.
                        // var height = MediaQuery.of(context).size.height * .6;
                        // var width = MediaQuery.of(context).size.width * .95;

                        return Obx(
                          () => (Container(
                            height: constraints.maxHeight / 1.5,
                            width: constraints.maxWidth,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      color:
                                          Colors.grey.shade700.withOpacity(0.5))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).focusColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: const Radius.circular(10.0),
                                        topLeft: const Radius.circular(10.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Today's Meal",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      width: constraints.maxWidth,
                                      color: Theme.of(context)
                                          .focusColor
                                          .withOpacity(0.0),
                                      //color: Colors.transparent,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                            ),
                                            child: Text(
                                              "Please Select your meal cycle for\n"
                                              "today or for the entire weekto month",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
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
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      CircularCheckBox(
                                                          value: homeController
                                                              .today_status
                                                              .value,
                                                          checkColor:
                                                              Colors.white,
                                                          activeColor: Colors
                                                              .yellow
                                                              .withOpacity(0.5),
                                                          inactiveColor:
                                                              Colors.yellow,
                                                          onChanged: (val) =>
                                                              setState(() {
                                                                homeController
                                                                    .today_status
                                                                    .value = val;
                                                                homeController
                                                                    .weekly_status
                                                                    .value = false;
                                                                homeController
                                                                    .monthly_status
                                                                    .value = false;
                                                              })),
                                                      SizedBox(
                                                        width: 0,
                                                      ),
                                                      Text(
                                                        "Today",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      CircularCheckBox(
                                                          value: homeController
                                                              .weekly_status
                                                              .value,
                                                          checkColor:
                                                              Colors.white,
                                                          activeColor: Colors
                                                              .yellow
                                                              .withOpacity(0.5),
                                                          inactiveColor:
                                                              Colors.yellow,
                                                          onChanged: (val) {
                                                            homeController
                                                                .today_status
                                                                .value = false;
                                                            homeController
                                                                .weekly_status
                                                                .value = val;
                                                            homeController
                                                                .monthly_status
                                                                .value = false;
                                                          }),
                                                      SizedBox(
                                                        width: 0,
                                                      ),
                                                      Text(
                                                        "Weekly",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      CircularCheckBox(
                                                          value: homeController
                                                              .monthly_status
                                                              .value,
                                                          checkColor:
                                                              Colors.white,
                                                          activeColor: Colors
                                                              .yellow
                                                              .withOpacity(0.5),
                                                          inactiveColor:
                                                              Colors.yellow,
                                                          onChanged: (val) {
                                                            homeController
                                                                .today_status
                                                                .value = false;
                                                            homeController
                                                                .weekly_status
                                                                .value = false;
                                                            homeController
                                                                .monthly_status
                                                                .value = val;
                                                          }),
                                                      SizedBox(
                                                        width: 0,
                                                      ),
                                                      Text(
                                                        "Monthly",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "Please update your meal schedule before 8.00am",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 8,
                                                color:
                                                    Colors.red.withOpacity(0.8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 10,
                                              left: 90,
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    CircularCheckBox(
                                                      value: homeController
                                                          .brkfst.value,
                                                      checkColor: Colors.white,
                                                      activeColor: Colors.yellow
                                                          .withOpacity(0.5),
                                                      inactiveColor:
                                                          Colors.yellow,
                                                      onChanged: (val) =>
                                                          homeController.brkfst
                                                              .value = val,
                                                    ),
                                                    SizedBox(
                                                      width: 0,
                                                    ),
                                                    Text(
                                                      "Breakfast",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    CircularCheckBox(
                                                      value: homeController
                                                          .lunch.value,
                                                      checkColor: Colors.white,
                                                      activeColor: Colors.yellow
                                                          .withOpacity(0.5),
                                                      inactiveColor:
                                                          Colors.yellow,
                                                      onChanged: (val) =>
                                                          homeController.lunch
                                                              .value = val,
                                                    ),
                                                    SizedBox(
                                                      width: 0,
                                                    ),
                                                    Text(
                                                      "Lunch",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    CircularCheckBox(
                                                      value: homeController
                                                          .dinner.value,
                                                      checkColor: Colors.white,
                                                      activeColor: Colors.yellow
                                                          .withOpacity(0.5),
                                                      inactiveColor:
                                                          Colors.yellow,
                                                      onChanged: (val) =>
                                                          homeController.dinner
                                                              .value = val,
                                                    ),
                                                    SizedBox(
                                                      width: 0,
                                                    ),
                                                    Text(
                                                      "Dinner",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Note that, breakfast will count as 0.5 meal\n"
                                                  "lunch and dinner will count 1.0 meal\n",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 6),
                                                  child: Text(
                                                    "see meal TERMS AND CONDITIONS",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.yellow
                                                            .withOpacity(0.6),
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).focusColor,
                                    borderRadius: BorderRadius.only(
                                        bottomRight:
                                            const Radius.circular(10.0),
                                        bottomLeft:
                                            const Radius.circular(10.0)),
                                  ),
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Update Meal Schedule",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        );
                      },
                    ),
                  );
                },
              ),
        ));
  }
}
