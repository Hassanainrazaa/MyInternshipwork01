import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:speedforcetasks/Screens/MobileVerificationScreen.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _pin = "1234";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, true);
                },
                child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                    child: const Icon(Icons.arrow_back)),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 176, 0, 0),
                    child: const Text(
                      "Email verification",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Please type OTP code that we sent you",
                    style: TextStyle(),
                  )),
              Container(
                //margin: const EdgeInsets.fromLTRB(50, 80, 10, 0),
                padding: const EdgeInsets.fromLTRB(70, 20, 70, 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  length: 4,
                  followingPinTheme: PinTheme(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60,
                      width: 90,
                      textStyle: const TextStyle(fontSize: 40)),
                  defaultPinTheme: PinTheme(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60,
                      width: 90,
                      textStyle: const TextStyle(fontSize: 40)),
                  animationCurve: Curves.easeIn,
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Resend on 02:30",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MobileVerificationScreen()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      //margin: const EdgeInsets.fromLTRB(60, 50, 0, 0),
                      padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
