import 'dart:async';

import 'package:codediva/home/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration (seconds: 3),() => Get.to(welcomeScreen()));
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.centerLeft,
          colors: [
            HexColor("#9797FC"),
            HexColor("#6C6CE6"),
          ],
        ),
      ),
    );
  }
}