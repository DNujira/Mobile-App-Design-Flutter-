// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const CustomButton({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 44,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: HexColor("#6C6CE6"),
        ),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const CustomButton2({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: HexColor("#6C6CE6")),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 44,
        width: 340,
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: HexColor("#6C6CE6"),
            ),
          ),
        ),
      ),
    );
  }
}
