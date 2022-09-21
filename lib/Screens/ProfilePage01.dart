import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage01 extends StatefulWidget {
  const ProfilePage01({Key? key}) : super(key: key);

  @override
  State<ProfilePage01> createState() => _ProfilePage01State();
}

class _ProfilePage01State extends State<ProfilePage01> {
  var Gol;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        //width: MediaQuery.of(context).size.width,
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [
                    SizedBox(
                      //to get the width of screen
                      child: Image.network(
                        "https://i.postimg.cc/bYFBp4Pd/pexels-photo-220570-1-1.png",
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context)
                            .size
                            .width, //to get the width of screen
                        //height: MediaQuery.of(context).size.height
                      ),
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          height: 50,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
                  Container(
                    //color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 83,
                          width: 83,
                          decoration: const BoxDecoration(),
                          child: Transform.scale(
                            scale: 1.2,
                            origin: const Offset(0, 100),
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
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: const [
                            Text(
                              "54",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Collection",
                              style: TextStyle(
                                  color: Color(0xffADB3BC),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                            //width: 49,
                            ),
                        Column(
                          children: const [
                            Text(
                              "640",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: Color(0xffADB3BC),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                            //width: 49,
                            ),
                        Column(
                          children: const [
                            Text(
                              "1M",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: Color(0xffADB3BC),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 22),
                    //color: Colors.white,
                    child: Row(
                      children: [
                        const Text(
                          "Nouman Niazi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.network(
                          "https://i.postimg.cc/zDR6FzDd/download-4-removebg-preview-1-1.png",
                          width: 30,
                          height: 15,
                        ),
                        const Text(
                          "Top Rated",
                          style:
                              TextStyle(color: Color(0xffADB3BC), fontSize: 10),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 13,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "4.8",
                          style:
                              TextStyle(color: Color(0xffADB3BC), fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        "Entrepreneur",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 22, right: 37),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Image.network(
                          "https://i.postimg.cc/nhm6Mkvp/Ellipse-110-1.png",
                          width: 28,
                          height: 28,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Followed by",
                          style: TextStyle(
                            color: Color(0xffADB3BC),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Sarah Binyasin",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 22,
                        height: 29,
                      ),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 10, bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: const Text(
                            "Follow",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        FontAwesomeIcons.bell,
                        size: 18,
                        color: Color(0xff828282),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Gol = "Collections";
                          //Gol = "Listings";
                          setState(() {
                            //Gol = "Listings";
                          });
                        },
                        child: Text(
                          "Collections",
                          style: TextStyle(
                              color: (Gol == "Collections")
                                  ? Colors.white
                                  : const Color(0xffADB3BC)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //Gol = "NFTs";
                          setState(() {
                            Gol = "Listings";
                            //Gol = "NFTs";

                            //Gol = "Listings";
                          });
                        },
                        child: Text(
                          "Listings",
                          style: TextStyle(
                              color: (Gol == "Listings")
                                  ? Colors.white
                                  : const Color(0xffADB3BC)
                              //(isPressed == true)
                              // ? const Color(0xffADB3BC)
                              // : Colors.white
                              ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //Gol = "NFTs";
                          setState(() {
                            Gol = "NFTs";
                            //Gol = "NFTs";

                            //Gol = "Listings";
                          });
                        },
                        child: Text(
                          "NFTs",
                          style: TextStyle(
                              color: (Gol == "NFTs")
                                  ? Colors.white
                                  : const Color(0xffADB3BC)
                              //(isPressed == true)
                              // ? const Color(0xffADB3BC)
                              // : Colors.white
                              ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //Gol = "NFTs";
                          setState(() {
                            Gol = "Buy now";

                            //Gol = "Listings";
                          });
                        },
                        child: Text(
                          "Buy now",
                          style: TextStyle(
                              color: (Gol == "Buy now")
                                  ? Colors.white
                                  : const Color(0xffADB3BC)
                              //(isPressed == true)
                              // ? const Color(0xffADB3BC)
                              // : Colors.white
                              ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //Gol = "NFTs";
                          setState(() {
                            Gol = "Streams";
                          });
                        },
                        child: Text(
                          "Streams",
                          style: TextStyle(
                              color: (Gol == "Streams")
                                  ? Colors.white
                                  : const Color(0xffADB3BC)
                              //(isPressed == true)
                              // ? const Color(0xffADB3BC)
                              // : Colors.white
                              ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent:
                        0, // empty space to the trailing edge of the divider.
                    color: Color(
                        0xffADB3BC), // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  (Gol == "Collections")
                      ? const Text(
                          'Collections',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      : Container(),
                  (Gol == "Listings")
                      ? const Text(
                          'Listings',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      : Container(),
                  (Gol == "NFTs")
                      ? Container(
                          margin: const EdgeInsets.only(
                              left: 9, right: 10, top: 25),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 2,
                            ),
                            itemCount: 30,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 116,
                                width: 116,
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      // margin: const EdgeInsets.only(
                                      //     left: 21,
                                      //     right: 21,
                                      //     top: 18,
                                      //     bottom: 24),
                                      child: Image.network(
                                        "https://i.postimg.cc/C5g3cjwj/pngwing-12-1.png,",
                                        width: 74,
                                        height: 74,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            right: 6, top: 6),
                                        alignment: Alignment.topRight,
                                        child: const Icon(
                                          FontAwesomeIcons.mapPin,
                                          size: 14,
                                          color: Color(0xff616161),
                                        )),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            right: 6, bottom: 7),
                                        alignment: Alignment.bottomRight,
                                        child: const Text(
                                          "3.8K",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff616161)),
                                        )),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 25, bottom: 7),
                                      alignment: Alignment.bottomRight,
                                      child: const Icon(
                                        FontAwesomeIcons.thumbsUp,
                                        size: 10,
                                        color: Color(0xff616161),
                                      ),
                                    )
                                  ],
                                ),
                                //color: Colors.white,
                                //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                margin:
                                    const EdgeInsets.fromLTRB(01, 01, 01, 01),
                                //margin: const EdgeInsets.fromLTRB(15, 50, 0, 0),

                                decoration: const BoxDecoration(
                                    color: Color(0xff2E2E2F)),
                              );
                            },
                          ),
                        )
                      : Container(),
                  (Gol == "Buy now")
                      ? Container(
                          margin: const EdgeInsets.only(
                              left: 9, right: 10, top: 25),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1,
                            ),
                            itemCount: 30,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      transform: Matrix4.translationValues(
                                          70, 110, 110),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 34, bottom: 5),

                                      ///color: Colors.amber,
                                      alignment: Alignment.bottomRight,
                                      child: const Icon(
                                        FontAwesomeIcons.eye,
                                        size: 11,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            right: 9, bottom: 4),
                                        alignment: Alignment.bottomRight,
                                        child: const Text("1.5k"))
                                  ],
                                ),

                                //color: Colors.white,
                                //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                margin:
                                    const EdgeInsets.fromLTRB(01, 01, 01, 01),
                                //margin: const EdgeInsets.fromLTRB(15, 50, 0, 0),

                                decoration:
                                    const BoxDecoration(color: Colors.white),
                              );
                            },
                          ),
                        )
                      : Container(),
                  (Gol == "Streams")
                      ? Container(
                          margin: const EdgeInsets.only(
                              left: 9, right: 10, top: 25),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1,
                            ),
                            itemCount: 30,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      transform: Matrix4.translationValues(
                                          70, 110, 110),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 6, top: 7),
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color(0xffF83C3C)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 34, bottom: 5),

                                      ///color: Colors.amber,
                                      alignment: Alignment.bottomRight,
                                      child: const Icon(
                                        FontAwesomeIcons.eye,
                                        size: 11,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            right: 9, bottom: 4),
                                        alignment: Alignment.bottomRight,
                                        child: const Text("1.5k"))
                                  ],
                                ),

                                //color: Colors.white,
                                //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                margin:
                                    const EdgeInsets.fromLTRB(01, 01, 01, 01),
                                //margin: const EdgeInsets.fromLTRB(15, 50, 0, 0),

                                decoration:
                                    const BoxDecoration(color: Colors.white),
                              );
                            },
                          ),
                        )
                      : Container(),
                ],
              ),
            )));
  }
}
