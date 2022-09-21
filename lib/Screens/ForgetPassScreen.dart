import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/EmailVerificationScreen.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context, true);
              },
              child: Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                  child: const Icon(Icons.arrow_back)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(10, 200, 200, 0),
                    child: const Text(
                      "Forget Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                  "Enter your email or mobile number for the verification process, we will send 4 digit code to your email or number."),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black12,
                //borderRadius: BorderRadius.all(15)
              ),
              margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              //padding: const EdgeInsets.all(50),
              height: 50,
              width: 300,
              child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(30),
                      hintText: "Email or Mobile",
                      label: const Text("Your Email or Mobile"),
                      prefixIcon: const Icon(Icons.email),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailVerificationScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 65),
                padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  "Send Code",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
