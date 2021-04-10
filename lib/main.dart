import 'package:flutter/material.dart';
import 'package:localization/Splash_screen.dart';

import 'bim.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "BIM",
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}
