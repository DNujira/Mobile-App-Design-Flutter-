import 'package:codediva/splash/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final darkColorForLightTheme = 0xff242f60;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: "Sukhumvit",
      ),
      home: splashScreen()
    );
  }
}