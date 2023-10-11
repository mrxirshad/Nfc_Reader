import 'package:flutter/material.dart';

import 'nfc_read_data.dart';
import 'nfc_write_data.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.teal,
       title: Text("NFC",style: TextStyle(fontSize: 20,color: Colors.white)
         ,),
       centerTitle: true,
     ),
      body: ListView(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                FilledButton.tonal(
                    onPressed: () {
                      Navigator.pushNamed(context, '/nfc/read');
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NfcReadData()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.document_scanner_rounded),
                        SizedBox(width: 10),
                        Text(
                          'NFC Read',
                          style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ],
                    )),
                FilledButton.tonal(
                    onPressed: () {
                      Navigator.pushNamed(context, '/nfc/write');
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NfcWriteData(),));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.edit_note_rounded),
                        SizedBox(width: 10),
                        Text(
                          'NFC Write',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
