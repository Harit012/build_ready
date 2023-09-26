import 'package:build_ready/Screens/inside_wing_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      // theme: ,
      // darkTheme: ,
      debugShowCheckedModeBanner: false,
      home: InsideWingScreen(noOfFloors: 5),
    ),
  );
}
