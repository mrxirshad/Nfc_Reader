import 'package:flutter/material.dart';
import 'package:flutter_nfc_sample/main_menu.dart';
import 'package:flutter_nfc_sample/nfc_helpers/nfcPay.dart';
import 'package:flutter_nfc_sample/nfc_read_data.dart';
import 'package:flutter_nfc_sample/nfc_write_data.dart';
import 'package:flutter_nfc_sample/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Démo NFC avec Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal.shade200),
      routes: {
        '/': (context) => const SplashScreen(),
        '/nfc/write': (context) => NfcWriteData(),
        '/nfc/read': (context) => NfcReadData(),
        '/nfc/menu':(context)=>MainMenu(),
        '/nfc/pay': (context)=>NfcPay(),
      },
      initialRoute: '/',
    );
  }
}
