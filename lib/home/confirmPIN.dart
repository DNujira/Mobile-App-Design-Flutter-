import 'package:codediva/home/touchID.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class confirmPINScreen extends StatefulWidget {
  final String enteredPin;

  const confirmPINScreen({Key? key, required this.enteredPin})
      : super(key: key);

  @override
  State<confirmPINScreen> createState() => _confirmPINScreenState();
}

class _confirmPINScreenState extends State<confirmPINScreen> {
  String enteredPin = '';

  Widget numButton(int number) {
    bool isPressed = false;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: FocusableActionDetector(
        autofocus: true,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: HexColor("#979797")),
            borderRadius: BorderRadius.circular(60.0),
          ),
          child: TextButton(
            onPressed: () {
              setState(() {
                if (enteredPin.length < 6) {
                  enteredPin += number.toString();
                  if (enteredPin.length == 6 &&
                      enteredPin == widget.enteredPin) {
                    Get.to(fingerScreen());
                  } else if ((enteredPin.length == 6 &&
                      enteredPin != widget.enteredPin)) {
                    _showAlertDialog(context);
                  } else {}
                }
              });
              isPressed = true;
            },
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white;
                }
                return HexColor("#646465");
              }),
              backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return HexColor('#6C6CE6');
                }
                return Colors.transparent;
              }),
            ),
            child: Text(
              number.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'ยืนยัน PIN CODE',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor("#646465")),
                            borderRadius: BorderRadius.circular(20.0),
                            color: index < enteredPin.length
                                ? HexColor("#4B4BC3")
                                : Colors.white),
                      );
                    },
                  ),
                ),
                SizedBox(height: 50),
                for (var i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => numButton(1 + 3 * i + index),
                      ).toList(),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextButton(onPressed: null, child: SizedBox()),
                        numButton(0),
                        TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  if (enteredPin.isNotEmpty) {
                                    enteredPin = enteredPin.substring(
                                        0, enteredPin.length - 1);
                                  }
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child:
                                  SvgPicture.asset('assets/images/delete.svg'),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text("Password do not match"),
              actions: [
                CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        enteredPin = '';
                      });
                    },
                    child: Text(
                      "ยกเลิก",
                      style:
                          TextStyle(color: HexColor("#0076FF"), fontSize: 17),
                    )),
              ],
            ));
  }
}
