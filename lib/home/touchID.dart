// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/confirmPIN.dart';
import 'package:codediva/home/alertTouchID.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class fingerScreen extends StatefulWidget {
  const fingerScreen({super.key});

  @override
  State<fingerScreen> createState() => _fingerScreenState();
}

class _fingerScreenState extends State<fingerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [HexColor("#D0D0D0").withOpacity(0.2), HexColor("#D0D0D0").withOpacity(0.2)], // Adjust your colors here
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                'Touch ID',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Text(
                'ตั้งค่าล็อคอินด้วยลายนิ้วมือ \nเพื่อการเข้าถึงที่รวดเร็วขึ้น',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: HexColor("#FFFFFF")),
                        child: SvgPicture.asset('assets/images/finger.svg')),
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: CustomButton(
                  title: 'ตั้งค่าลายนิ้วมือ',
                  onTap: (){},
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: (){
                    Get.to(skipIDScreen());
                  }, 
                  child: Text("ข้าม",style: TextStyle(fontSize: 16),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
