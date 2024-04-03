import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/Foodie/Inter_face.dart';
import 'package:food_app/screens/First_Page.dart';
import 'Foodie/Sign_Up.dart';
import 'Foodie/Sign_in.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled:
  true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Interface(),
    );
  }
}
