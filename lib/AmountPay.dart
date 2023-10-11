import 'package:flutter/material.dart';

class AmountPay extends StatefulWidget {
  const AmountPay({super.key});

  @override
  State<AmountPay> createState() => _AmountPayState();
}

class _AmountPayState extends State<AmountPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),child: Center(child: Image.asset("lib/icons/check.png",scale: 4,)),
            ),
            SizedBox(height: 10,),
            Text("Successfully Pay",style: TextStyle(fontSize: 25,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
