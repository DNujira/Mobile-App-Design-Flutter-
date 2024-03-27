// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/forgotpwd.dart';
import 'package:codediva/home/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'ชื่อผู้ใช้งาน'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'รหัสผ่าน'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: Colors.grey),
                  ),
                  value: value,
                  onChanged: (newBool) {
                    setState(() {
                      value = newBool ?? false;
                    });
                  },
                ),
                Text(
                  "บันทึกการเข้าสู่ระบบ",
                  style: TextStyle(fontSize: 15, color: HexColor("#646465")),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Get.to(forgotpwdScreen());
                    },
                    child: Text("ลืมรหัสผ่าน?",
                        style: TextStyle(
                            fontSize: 15, color: HexColor("#646465"))))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'เข้าสู่ระบบ',
              onTap: (){
                Get.to(otpScreen());
              },
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 50,
                    thickness: 1,
                    color: HexColor("#B7B7B7"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('ไม่มีบัญชีผู้ใช้',style: TextStyle(
                    color: HexColor("#B7B7B7"),
                    fontSize: 15
                  ),),
                ),
                Expanded(
                  child: Divider(
                    height: 50,
                    thickness: 1,
                    color: HexColor("#B7B7B7"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomButton2(
              title: "เปิดบัญชีเพื่อลงทะเบียนบัญชีผู้ใช้",
            )
          ],
        ),
      ),
    );
  }
}
