//
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/LetsExplore.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://i.postimg.cc/yNWhD0Sr/logo.png",
                    width: 124,
                    height: 90,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    child: const Text(
                      "Hey Welcome!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text(
                      "We are the best biding and selling \n platform in the middle east",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(11.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LetsExplore()),
                        );
                      },
                      child: Container(
                        child: const Text(
                          "               Lets Explore !             ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    //color: Colors.black,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: const Text(
                          "                   Sign up                    ",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      //color: Colors.black,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text("Already have an account")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
