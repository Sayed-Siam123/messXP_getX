import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messXP_getX/ColorLibrary/HexColor.dart';

//COLORS TAG START//


Color white = HexColor("#FFFFFF");//white
Color text_color1 = HexColor("#828282");
Color text_color2 = HexColor("#BDBDBD");
Color loginregister_back = HexColor("#33302C");
Color dialog = HexColor("#363636");


//COLORS TAG END//



//UTIL CLASS START//

class Utils{
   String title,messageText;
   int duration;

  void showSnack({String title, String message, int duration}){
    Get.rawSnackbar(
      titleText: Text(title.toString(),style: TextStyle(
          color: Colors.white
      ),),
      duration: Duration(seconds: duration == null? 2 : duration),
      messageText: Text(message.toString(),style: TextStyle(
          color: Colors.white
      ),),
      backgroundColor: Colors.black,
    );
  }

  HideKeyboard(){
    FocusScope.of(Get.overlayContext).requestFocus(new FocusNode());
  }

}

//UTIL CLASS END//
