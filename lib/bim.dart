import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/result.dart';
import 'package:wave_slider/wave_slider.dart';

class bim extends StatefulWidget {
  @override
  _bimState createState() => _bimState();
}

class _bimState extends State<bim> {
  double height = 1;
  int weight = 50;
  int age = 20;
  bool isMale = true;
  Color color = Color(0xFF01142F).withOpacity(0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01142F),
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontFamily: "Kanit",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF01142F),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Card(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/male.png",
                              color: Colors.white,
                              height: 65,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Commissioner",
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.red : color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Card(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/female.png",
                              color: Colors.white,
                              height: 65,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Commissioner",
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? color : Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Commissioner",
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.round().toString(),
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    WaveSlider(
                      displayTrackball: true,
                      color: Colors.red,
                      onChanged: (double dragUpdate) {
                        setState(() {
                          height = dragUpdate *
                              250; // dragUpdate is a fractional value between 0 and 1
                          print(height.round());
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF01142F).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Commissioner",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                heroTag: null,
                                backgroundColor: Color(0xFF01142F),
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: null,
                                backgroundColor: Color(0xFF01142F),
                                child: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF01142F).withOpacity(0.9),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontFamily: "Commissioner",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                heroTag: null,
                                backgroundColor: Color(0xFF01142F),
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: null,
                                backgroundColor: Color(0xFF01142F),
                                child: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF01142F).withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: MaterialButton(
              onPressed: () {
                var result1 = weight / pow(height / 100, 2);
                print(result1.round());
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return result(isMale, result1.round(), age);
                }));
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "LondrinaSolid",
                  fontWeight: FontWeight.w900,
                  letterSpacing: 5,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
