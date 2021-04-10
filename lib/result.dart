import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class result extends StatelessWidget {
  final bool isMale;
  final int pim;
  final int age;

  result(this.isMale, this.pim, this.age);
  String mess;
  String image;
  @override
  Widget build(BuildContext context) {
    if (pim < 18.5) {
      mess = "You Are UnderWeight";
      image = "images/37745-eaten-hamburger.json";
    } else if (pim >= 18.5 && pim <= 24.9) {
      mess = "You Are Normal";
      image = "images/28991-jetpack-man-gsb.json";
    } else if (pim >= 25 && pim <= 29.9) {
      mess = "You Are OverWeight";
      image = "images/42895-super-fatman-walk.json";
    } else {
      mess = "You Are Obese";
      image = "images/3227-error-404-facebook-style.json";
    }
    return Scaffold(
      backgroundColor: Color(0xFF01142F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: Lottie.asset(image),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI : ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  pim.toString(),
                  style: TextStyle(
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Text(
              mess,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Kanit",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,
                  child: Text(
                    "Restart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
