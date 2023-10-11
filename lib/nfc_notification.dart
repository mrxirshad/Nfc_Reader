import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nfc_sample/main_menu.dart';
import 'package:flutter_nfc_sample/utils/Utils_Page.dart';
import 'package:nfc_manager/nfc_manager.dart';

class nfcNotification extends StatefulWidget {
  const nfcNotification({super.key});

  @override
  State<nfcNotification> createState() => _nfcNotificationState();
}

class _nfcNotificationState extends State<nfcNotification> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();




    Timer(Duration(seconds: 3),(){
      Utils.FlushBarErrorMessage("Turn On NFC Device", context);

    });


  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Container( child:
        Center(
          child: ElevatedButton( child:Text("Allow NFC Setting",style: TextStyle(fontSize: 20),), onPressed: () {


            Utils.FlushBarErrorMessage("Turned on NFC ", context);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>MainMenu()));



        },)

        )
      )

    );
  }
}
