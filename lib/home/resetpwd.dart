import 'package:codediva/custom/custom_button.dart';
import 'package:codediva/home/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class resetSuccessScreen extends StatefulWidget {
  const resetSuccessScreen({super.key});

  @override
  State<resetSuccessScreen> createState() => _resetSuccessScreenState();
}

class _resetSuccessScreenState extends State<resetSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/succ.svg'),
            SizedBox(height: 60),
            Text(
              'สำเร็จ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20,),
            Text(
              'รีเซ็ตรหัสผ่านของคุณสำเร็จแล้ว',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50,),
            CustomButton(
              title: 'ตกลง',
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
