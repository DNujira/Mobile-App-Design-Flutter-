// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/resetpwd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgotpwdScreen extends StatefulWidget {
  const forgotpwdScreen({super.key});

  @override
  State<forgotpwdScreen> createState() => _forgotpwdScreenState();
}

class _forgotpwdScreenState extends State<forgotpwdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "ลืมรหัสผ่าน?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10,),
              Text(
                "กรุณากรอกอีเมลหรือเบอร์โทรศัพท์ที่\nลงทะเบียน",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'อีเมล/เบอร์โทรศัพท์'),
            ),
            SizedBox(height: 40,),
            CustomButton(
              title: 'ส่ง',
              onTap: (){
                Get.to(resetSuccessScreen());
              },
            )
            ])
          )
        );
  }
}
