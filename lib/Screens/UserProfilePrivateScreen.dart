import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/UserProfilePublicScreen.dart';

class UserProfiePrivate extends StatefulWidget {
  const UserProfiePrivate({Key? key}) : super(key: key);

  @override
  State<UserProfiePrivate> createState() => _UserProfiePrivateState();
}

class _UserProfiePrivateState extends State<UserProfiePrivate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width, //to get the width of screen
          //height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context)
                        .size
                        .width, //to get the width of screen
                    child: Image.network(
                      "https://i.postimg.cc/bYFBp4Pd/pexels-photo-220570-1-1.png",
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context)
                          .size
                          .width, //to get the width of screen
                      //height: MediaQuery.of(context).size.height
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                          //padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        //padding: const EdgeInsets.fromLTRB(300, 50, 20, 0),
                        alignment: Alignment.topRight,
                        child: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(),
                      child: Transform.scale(
                        scale: 1.2,
                        origin: const Offset(2, 100),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            backgroundImage: NetworkImage(
                              "https://i.postimg.cc/YCtkhvV9/13ac3e10a4ed96bbdbdad1e1743cf132-1.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(children: [
                      Container(
                        //width: 75,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                        child: const Text(
                          "52",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text("Collections"))
                    ]),
                    Column(children: [
                      Container(
                          //width: 85,
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: const Text(
                            "640",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text("Followings"))
                    ]),
                    Column(children: [
                      Container(
                          //height: 50,
                          //color: Colors.black,
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: const Text(
                            "1M",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: const Text("Followers"))
                    ]),
                  ],
                ),
              ]),
              Container(
                margin: const EdgeInsets.only(left: 22),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Noman Niazi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 22),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Entraprenuer",
                    style: TextStyle(fontSize: 14),
                  )),
              Container(
                  margin: const EdgeInsets.fromLTRB(22, 5, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing \n elit, sed do eiusmod tempor incididunt ut labore et \n dolore magna aliqua. Ut enim ad minim veniam.",
                    style: TextStyle(fontSize: 14),
                  )),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(22, 10, 0, 0),
                    child: Image.network(
                        "https://i.postimg.cc/qMw5k0ts/Ellipse-110.png"),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                      child: const Text("Followed by")),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                    child: const Text(
                      "Sarah Binyasin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const UserProfilePublicScreen()),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      //alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(left: 5),
                  child: const Icon(
                    Icons.notification_add,
                    color: Colors.black,
                  ),
                ),
              ]),
              Container(
                margin: const EdgeInsets.only(top: 22),
                child: const Divider(
                  height: 2,
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(22, 22, 0, 0),
                child: const Text(
                  "The Account is Private",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(22, 4, 0, 0),
                  child: const Text("Follow ro view his profile"))
            ],
          ),
        ),
      ),
    );
  }
}
