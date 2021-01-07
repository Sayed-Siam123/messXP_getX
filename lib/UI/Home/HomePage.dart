import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/Controller/HomeController.dart';
import 'package:messXP_getX/UI/CommonWidgets/AlertPopUp.dart';
import 'package:messXP_getX/UI/CommonWidgets/Appbar.dart';
import 'package:messXP_getX/UI/CommonWidgets/Drawer.dart';
import 'package:messXP_getX/UI/Home/Widgets/HomePageFirstPortion.dart';
import 'package:unicorndial/unicorndial.dart';

import 'Widgets/HomePageSecondPortion.dart';

class HomePage extends StatelessWidget {
  Flushbar flush;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Meal Schedule",
        currentButton: FloatingActionButton(
          heroTag: "btn1",
          backgroundColor: Colors.yellow.shade800,
          mini: true,
          child: Icon(MaterialCommunityIcons.silverware_fork_knife),
          onPressed: () {
            homeController.dinner.value = false;
            homeController.lunch.value = false;
            homeController.brkfst.value = false;
            homeController.weekly_status.value = false;
            homeController.today_status.value = false;
            homeController.monthly_status.value = false;
            print("OK!!");
            AlertPopUp().showDialog_mealSchedule();
          },
        )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Quick Bazar Entry",
        currentButton: FloatingActionButton(
          heroTag: "btn2",
          backgroundColor: Colors.yellow.shade800,
          mini: true,
          child: Icon(FontAwesome.shopping_bag),
          onPressed: () {
            AlertPopUp().showDialog_quickBazarEntry();
            print("OK!!");
          },
        )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Utilities",
        currentButton: FloatingActionButton(
            heroTag: "btn3",
            backgroundColor: Colors.yellow.shade800,
            mini: true,
            child: Icon(
              Foundation.dollar_bill,
              size: 20,
            ),
            onPressed: () {
              flush = Flushbar<bool>(
                margin: EdgeInsets.only(bottom: 10, right: 5, left: 5),
                borderRadius: 8,
                title: "Hey Manager/Member",
                message:
                    "A birthday is coming tomorrow. Would you like to see?",
                icon: Icon(
                  FontAwesome.birthday_cake,
                  color: Colors.blue,
                  size: 20,
                ),
                mainButton: FlatButton(
                  onPressed: () {
                    flush.dismiss(true); // result = true
                  },
                  child: Text(
                    "WISH",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              ) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
                ..show(Get.context).then((result) {
                  //homeController.wasButtonClicked.value = result;
                });
            })));

    return Scaffold(
      backgroundColor: Colors.white,
      key: homeController.scaffoldKey,
      drawer: DrawerWidget(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate([
                    Stack(
                      overflow: Overflow.clip,
                      children: <Widget>[
                        Align(
                          child: Container(
                            width: constraints.maxWidth,
                            padding: const EdgeInsets.only(top: 110,bottom: 30),
                            child: Column(
                              children: [
                                HomePageFirstPortion(),
                                HomePageSecondPortion(),
                              ],
                            ),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 80,
                            width: constraints.maxWidth,
                            child: AppBarWidget(title: "Dashboard",),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  new BoxShadow(
                                      blurRadius: 5.0,
                                      spreadRadius: 2,
                                      color: Colors.grey.shade700.withOpacity(0.5))
                                ],
                                // borderRadius: new BorderRadius.vertical(
                                //     bottom: new Radius.elliptical(
                                //         MediaQuery.of(context).size.width, 100.0)),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(5),
        child: UnicornDialer(
            backgroundColor: Colors.white.withOpacity(0.6),
            hasBackground: true,
            parentButtonBackground: Colors.yellow.shade800,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(
              Icons.add,
              color: Colors.black,
            ),
            childButtons: childButtons),
      ),
      //bottomNavigationBar:
    );
  }
}
