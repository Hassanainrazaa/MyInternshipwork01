//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/WelcomeScreen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://i.postimg.cc/hvs1Fqvz/Welcomepage.png",
                    width: 100,
                    //height: 518,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Within the `FirstRoute` widget
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomePage()),
                      );
                    },
                    child: const Center(
                      child: Text("Powered By ABC"),
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
