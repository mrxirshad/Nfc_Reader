import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
static void FlushBarErrorMessage(String message,context){
  showFlushbar(context: context, flushbar: Flushbar(
    forwardAnimationCurve:  Curves.decelerate,
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
    padding: EdgeInsets.all(15),
    message: message,
    duration: Duration(seconds: 3),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Color(0xff734686),
    reverseAnimationCurve: Curves.easeInOut,
    positionOffset: 20,
    borderRadius: BorderRadius.circular(21),
    icon: Icon(Icons.error,size: 20,color: Colors.black,)
  )..show(context),

  );
}
}