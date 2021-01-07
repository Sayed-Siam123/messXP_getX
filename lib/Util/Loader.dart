import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:overlay_dialog/overlay_dialog.dart';

class Loader extends StatefulWidget {
  final String text;

  const Loader({Key key, this.text}) : super(key: key);
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(125),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LoadingIndicator(
              indicatorType: Indicator.values[20],
              color: Colors.yellow,
            ),
            SizedBox(height: 10,),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(widget.text,style: TextStyle(
                fontSize: 17
              ),),
            ),
          ],
        ),
      ),
    );
  }
}