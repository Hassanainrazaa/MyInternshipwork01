import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/EditProfileScreen.dart';

class UserProfilePublicScreen03 extends StatefulWidget {
  const UserProfilePublicScreen03({Key? key}) : super(key: key);

  @override
  State<UserProfilePublicScreen03> createState() =>
      _UserProfilePublicScreen03State();
}

class _UserProfilePublicScreen03State extends State<UserProfilePublicScreen03> {
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                              //padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                              //padding: const EdgeInsets.fromLTRB(300, 50, 20, 0),
                              //alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 30, right: 10),
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                          //padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(children: [
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
                      Positioned(
                          right: 10,
                          top: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder()),
                            onPressed: () {},
                            child: const Icon(
                              Icons.camera_alt,
                            ),
                          )),
                    ]),
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
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Noman Niazi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.edit)
              ]),
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
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(bottom: 20),
                color: Colors.black12,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text(
                              "5 Items",
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: const Text(
                            "2,790 SAR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromARGB(255, 180, 152, 14)),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Icon(Icons.warning))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              "2,592 SAR - 2,988 SAR",
                              style: TextStyle(fontSize: 15),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            //margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                          "Estimated worth",
                          style: TextStyle(fontSize: 15),
                        ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: const Text(
                              "-89 SAR  (    -3%)",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: const Text(
                              "Loss",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, right: 102, left: 102),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            margin: const EdgeInsets.only(top: 32),
                            child: const Text(
                              "Sell This Watch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 42),
                  alignment: Alignment.center,
                  child: const Text("Collections")),
              Container(
                margin: const EdgeInsets.only(top: 11),
                child: const Divider(
                  height: 2,
                  color: Colors.black12,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                      //margin: const EdgeInsets.fromLTRB(15, 50, 0, 0),

                      decoration: const BoxDecoration(color: Colors.black12),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
