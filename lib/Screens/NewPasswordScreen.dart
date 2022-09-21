import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/BottomBarScreen.dart';
//import 'package:speedforcetasks/Screens/ButtomBarScreen.dart';

import 'package:speedforcetasks/Screens/UserProfilePrivateScreen.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserProfiePrivate()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(30, 176, 0, 0),
                  child: const Text(
                    "New Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 5, 0, 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Now you can create new password and confirm it\n below",
                style: TextStyle(),
              )),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    //borderRadius: BorderRadius.all(15)
                  ),
                  margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                  //padding: const EdgeInsets.all(50),
                  height: 50,
                  width: 340,
                  child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(30),
                          hintText: "New Password",
                          label: const Text("Your New Password"),
                          //icon: const Icon(Icons.man_rounded),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.black12,
                                width: 1.0,
                              )))),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    //borderRadius: BorderRadius.all(15)
                  ),
                  margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                  //padding: const EdgeInsets.all(50),
                  height: 50,
                  width: 340,
                  child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(30),
                          hintText: "Confirm Password",
                          label: const Text("Confirm Your Password"),
                          //icon: const Icon(Icons.man_rounded),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.black12,
                                width: 1.0,
                              )))),
                ),
              ]),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              alignment: Alignment.centerRight,
              child: const Text(
                "Resend on 02:30",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                  padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
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
