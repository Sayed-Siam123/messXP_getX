import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/Controller/HomeController.dart';
import 'package:messXP_getX/UI/CommonWidgets/AlertPopUp.dart';

class HomePageFirstPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: Colors.grey.shade700.withOpacity(0.4))
                    ]),
                child: IconButton(
                  onPressed: (){
                    homeController.scaffoldKey.currentState.openDrawer();
                  },
                  icon: Image.asset("assets/images/menuIcon.png",color: Colors.black.withOpacity(0.7),),
                ),
              ),
              Expanded(
                child: Text(
                  "Meal Rate",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade700.withOpacity(0.7),
                  ),
                ),
              ),

              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Colors.grey.shade700.withOpacity(0.4))
                      ]),
                  child: InkWell(
                    onTap: (){
                      AlertPopUp().showDialog_showqr();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(AntDesign.qrcode),
                        SizedBox(height: 5,),
                        Text(
                          "My Code",
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(left: 20),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.yellow.shade500.withOpacity(0.6),
                shape: BoxShape.circle),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.9),
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child:
                      Center(
                          child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      color: Colors.grey.shade700.withOpacity(0.2),
                                    )
                                  ]
                              ),
                              child: Center(child: FittedBox(child: Text("48.7 TK")))
                          )
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
