import 'dart:async';

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NewFullScreen.dart';

class CollectionProjectImage extends StatefulWidget {
  const CollectionProjectImage({Key? key}) : super(key: key);

  @override
  State<CollectionProjectImage> createState() => _CollectionProjectImageState();
}

class _CollectionProjectImageState extends State<CollectionProjectImage> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, right: 15),
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // SizedBox(
                  //     //width: 0,
                  //     ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.7,
            ),
            SizedBox(
              height: 375,
              child: InkWell(
                onTap: (() {
                  Timer(const Duration(milliseconds: 10), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewFullScreen()),
                    );
                  });
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const FullScreen()),
                  // );
                  print("You Pressed on Picture");
                }),
                child: Image.network(
                  "https://i.postimg.cc/8CqrKVx9/963ec5927bf705f2c8135aff3901ea7b.jpg",
                  width: MediaQuery.of(context).size.width,
                  //height: 375,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              checked = !checked;
                            });
                          },
                          child: checked == false
                              ? const Icon(
                                  FontAwesomeIcons.thumbsUp,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  FontAwesomeIcons.thumbsUp,
                                  color: Colors.red,
                                )),
                      const Text(
                        "3.8K",
                        style: TextStyle(color: Color(0xff828282)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.83,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Goblintown #3313",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          FontAwesomeIcons.shareNodes,
                          color: Color(0xff828282),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
