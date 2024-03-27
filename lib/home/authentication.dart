// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:codediva/home/pincode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pinput/pinput.dart';

class authenScreen extends StatefulWidget {
  const authenScreen({super.key});

  @override
  State<authenScreen> createState() => _authenScreenState();
}

class _authenScreenState extends State<authenScreen> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(30, 60, 87, 1);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 24,
      )
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 1,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ยืนยันตัวตน",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              "กรุณากรอกรหัสยืนยันที่เราได้ส่งให้คุณ ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Text(
              "065-XXX-0859",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Pinput(
                length: 6,
                pinAnimationType: PinAnimationType.slide,
                controller: controller,
                focusNode: focusNode,
                defaultPinTheme: defaultPinTheme,
                showCursor: false,
                cursor: cursor,
                preFilledWidget: preFilledWidget,
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                "หากคุณไม่ได้รับรหัส?",
                style: TextStyle(fontSize: 15, color: HexColor("#494949")),
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Get.to(PinCodeScreen());
                  },
                  child: Text(
                    "ส่งรหัสใหม่(57)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}