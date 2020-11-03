import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/Page/HomePage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ini Title',
      home: HomePage(),
    );
  }
}