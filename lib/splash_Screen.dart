import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nfc_sample/main_menu.dart';
import 'package:flutter_nfc_sample/nfc_notification.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>nfcNotification(),));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.teal.shade200,
              ),child: Center(child: Icon(Icons.notification_add,size: 50,)
            ),

            ),
          ],
        ),
      ),
    );
  }
}
