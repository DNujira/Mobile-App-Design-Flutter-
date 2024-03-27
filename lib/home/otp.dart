// ignore_for_file: prefer_const_constructors

import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/authentication.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 90,
              width: 90,
              child: DottedBorder(
                borderType: BorderType.Rect,
                dashPattern: [5, 5],
                color: HexColor("#949495"),
                child: Center(
                    child: SvgPicture.asset('assets/images/lockotp.svg')),
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
            'OTP จะถูกส่งไปที่เบอร์โทรศัพท์',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '065-XXX-0859',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: HexColor("#6C6CE6")),
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            title: 'ขอรหัส OTP',
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => authenScreen()),
                  (route) => false);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'กรณีเบอร์โทรศัพท์ไม่ถูกต้องกรุณาติดต่อเบอร์ 02-XXX-XXXX',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: HexColor("#7A7A7A")),
          )
        ],
      ),
    );
  }
}
