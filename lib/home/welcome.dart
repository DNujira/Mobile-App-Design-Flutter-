// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/login.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ยินดีต้อนรับ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "กรุณาเลือกภาษา",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: 100),
            CustomButton(title: "English", onTap: () {}),
            SizedBox(height: 20),
            CustomButton(
              title: "ไทย",
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 30, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          child: DottedBorder(
                                            borderType: BorderType.Rect,
                                            dashPattern: [5, 5],
                                            color: HexColor("#949495"),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                  "assets/images/term.svg"),
                                            ),
                                          ))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("เงื่อนไขการใช้บริการ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                              Divider(
                                height: 50,
                                thickness: 1,
                                color: Colors.grey,
                                indent: 0,
                                endIndent: 25,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: HexColor("#6C6CE6")),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 50,
                                      width: 160,
                                      child: Center(
                                          child: Text(
                                        "ปฏิเสธ",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      )),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: HexColor("#6C6CE6")),
                                      height: 50,
                                      width: 160,
                                      child: Center(
                                          child: Text(
                                        "ยอมรับ",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      )),
                                    ),
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()),
                                          (route) => false);
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 20)
                            ],
                          ),
                        ),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
