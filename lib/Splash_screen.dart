import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/bim.dart';
import 'package:lottie/lottie.dart';

class Splash_screen extends StatefulWidget {
  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
              return bim();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01142F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: Lottie.asset('images/30775-accounting.json'),
            ),
            Expanded(
              child: Container(
                child: Lottie.asset(
                    "images/54906-loading-animation-bored-hand.json"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
