import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/Controller/HomeController.dart';
import 'package:messXP_getX/UI/CommonWidgets/AlertPopUp.dart';

class HomePageSecondPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: constraints.maxWidth,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Last Month",style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade400,
                                ),),
                                Text("80000.00",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade400,
                                ),),

                                SizedBox(height: 10,),

                                Text("Current Month",style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade700,
                                ),),
                                Text("80000.00",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade700,
                                ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Deposit",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Last Month",style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade400,
                                ),),
                                Text("80000.00",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade400,
                                ),),

                                SizedBox(height: 10,),

                                Text("Current Month",style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade700,
                                ),),
                                Text("80000.00",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade700,
                                ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Expenses",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Center(
                                child: Text("10",style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Members",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Center(
                                child: Text("72350",style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Daily Expenses",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Center(
                                child: Text("50",style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Meals",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 80,
                            width: constraints.maxWidth/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  color: Colors.grey.shade700.withOpacity(0.21),
                                )
                              ],
                            ),
                            child: Center(
                                child: Text("22",style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey.shade700,
                                ),)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Total Bazar",style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade700,
                            ),),
                          )
                        ],
                      ),
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
