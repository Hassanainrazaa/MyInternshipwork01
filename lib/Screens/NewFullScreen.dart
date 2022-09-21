import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:speedforcetasks/Providers/Comment.dart';
import 'package:speedforcetasks/Screens/ViewAll.dart';

class NewFullScreen extends StatefulWidget {
  const NewFullScreen({Key? key}) : super(key: key);

  @override
  State<NewFullScreen> createState() => _NewFullScreenState();
}

class _NewFullScreenState extends State<NewFullScreen> {
  int? rplyIndex;
  TextEditingController cmtctrl = TextEditingController();
  TextEditingController rplctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final comment = Provider.of<Comment>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              //color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Audi A8",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.network(
                      "https://i.postimg.cc/8CqrKVx9/963ec5927bf705f2c8135aff3901ea7b.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      fit: BoxFit.cover,
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
                                  comment.togglechecklike();
                                },
                                child: comment.CheckLike == false
                                    ? const Icon(
                                        FontAwesomeIcons.thumbsUp,
                                        color: Color(0xff828282),
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
                          width: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  comment.toggleCheckbox();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const AddComment()),
                                  // );
                                },
                                child: comment.CheckComment == false
                                    ? const Icon(
                                        Icons.comment,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.comment,
                                        color: Color(0xff828282),
                                      )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Goblintown #3313",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            // const Icon(
                            //   FontAwesomeIcons.shareNodes,
                            //   color: Color(0xff828282),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 37,
                        height: 51,
                        margin: const EdgeInsets.only(left: 14, top: 13),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.postimg.cc/Cx9TMh8d/13ac3e10a4ed96bbdbdad1e1743cf132-1-1.png'),
                            //fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 13),
                            child: const Text(
                              "Nouman Niazi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 14),
                              child: const Text(
                                "Entrepreneur",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(
                                      0xffADB3BC,
                                    )),
                              ))
                        ],
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 10, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  comment.CheckComment == false
                      ? Container(
                          //height: 100,
                          margin: const EdgeInsets.only(left: 25),
                          child: ListView.builder(
                              addAutomaticKeepAlives: true,
                              dragStartBehavior: DragStartBehavior.down,
                              scrollDirection: Axis.vertical,
                              itemCount: comment.getcmt.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index1) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ViewALL()),
                                        );
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    "https://i.postimg.cc/8Cxj99GZ/13ac3e10a4ed96bbdbdad1e1743cf132-1-1.png"),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: const Color.fromRGBO(
                                                        46, 46, 47, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11)),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Username",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      "${comment.getcmt[index1][0]}",
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 50),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 5),
                                                  child: const Text(
                                                    "3m",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            156,
                                                            238,
                                                            232,
                                                            232)),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 30),
                                                  child: InkWell(
                                                      onTap: () {
                                                        print("Text Pressed");
                                                        rplyIndex = index1;
                                                        comment
                                                            .togglecheckreplay();
                                                        //comment.toggleCheckbox();
                                                        print(
                                                            comment.Checkreplay
                                                                .toString());
                                                      },
                                                      child: const Text(
                                                        "Reply",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                                Color.fromARGB(
                                                                    156,
                                                                    238,
                                                                    232,
                                                                    232)),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Text(
                                    //   commentProvider.getcmt[index1][1]
                                    //       .getRange(2, commentProvider.c.length)
                                    //       .toString(),
                                    // ),
                                    (comment.ShowReplay == true)
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 70),
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: comment
                                                    .getcmt[index1][1].length,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(left: 0),
                                                        child: Row(
                                                          children: [
                                                            const SizedBox(
                                                              width: 25,
                                                              //height: 25,
                                                            ),
                                                            Row(
                                                              children: [
                                                                const SizedBox(
                                                                  width: 25,
                                                                  //height: 25,
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            "https://i.postimg.cc/MKggLJrc/Ellipse-110-1.png"),
                                                                  ),
                                                                ),
                                                                const Text(
                                                                  "UserName : ",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                                Text(
                                                                  comment
                                                                      .getcmt[
                                                                          index1]
                                                                          [1][
                                                                          index]
                                                                      .toString(),
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                          )
                                        : ListView.builder(
                                            shrinkWrap: true,
                                            itemCount:
                                                comment.c[index1][1].length > 2
                                                    ? 2
                                                    : comment
                                                        .c[index1][1].length,
                                            itemBuilder: (context, ind) {
                                              return Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 70),
                                                    child: Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 25,
                                                          //height: 25,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const SizedBox(
                                                              width: 25,
                                                              //height: 25,
                                                              child:
                                                                  CircleAvatar(
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                        "https://i.postimg.cc/MKggLJrc/Ellipse-110-1.png"),
                                                              ),
                                                            ),
                                                            const Text(
                                                              "UserName : ",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            Text(
                                                              comment.getcmt[
                                                                      index1][1]
                                                                      [ind]
                                                                  .toString(),
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),

                                    const SizedBox(
                                      height: 5,
                                    ),
                                    (comment.c[index1][1].length > 2)
                                        ? InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ViewALL()),
                                              );
                                            },
                                            child: InkWell(
                                              onTap: () {
                                                comment.togglecheckshowreplay();
                                                print(comment.Checkreplay);
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 50),
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: const Text(
                                                  "Many more Replies",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        : const Text("")
                                  ],
                                );
                              }),
                        )
                      : Container(),
                  const SizedBox(
                    height: 15,
                  ),
                  comment.CheckComment == false && comment.Checkreplay == true
                      ? Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(46, 46, 47, 1),
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(
                              top: 0, left: 30, right: 30),
                          child: TextFormField(
                              //controller: iconsCtrl,
                              onFieldSubmitted: (value) {
                                comment.addComment(value);
                                cmtctrl.clear();
                                //value1.addComments(value);
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: cmtctrl,
                              maxLines: 1,
                              //minLines: 10,
                              style: const TextStyle(
                                  color: Color.fromRGBO(208, 208, 208, 1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        comment.addComment(cmtctrl.text);
                                        cmtctrl.clear();
                                      },
                                      child: const Icon(
                                          FontAwesomeIcons.paperPlane)),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  fillColor: Colors.transparent,
                                  filled: false,
                                  hintText: "Add a Comment",
                                  contentPadding: const EdgeInsets.only(
                                      top: 5, left: 10, bottom: 5),
                                  hintStyle: const TextStyle(
                                      color: Color.fromRGBO(208, 208, 208, 1),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12))),
                        )
                      : comment.Checkreplay == false
                          ? Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(46, 46, 47, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              margin: const EdgeInsets.only(
                                  top: 0, left: 30, right: 30),
                              child: TextFormField(
                                  controller: rplctrl,
                                  onFieldSubmitted: (value) {
                                    comment.addReplay(value, rplyIndex);
                                    comment.togglecheckreplay();
                                    rplctrl.clear();
                                    //commentsProvider.addReplay(value);
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  //controller: MyController3,
                                  maxLines: 1,
                                  //minLines: 10,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(208, 208, 208, 1),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15),
                                  decoration: InputDecoration(
                                      suffixIcon: InkWell(
                                          onTap: () {
                                            // print(commentsProvider.replay);
                                            comment.addReplay(
                                                rplctrl.text, rplyIndex);
                                            comment.togglecheckreplay();
                                            rplctrl.clear();
                                          },
                                          child: const Icon(
                                              FontAwesomeIcons.paperPlane)),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      fillColor: Colors.transparent,
                                      filled: false,
                                      hintText: "Add a Replay",
                                      contentPadding: const EdgeInsets.only(
                                          top: 5, left: 10, bottom: 5),
                                      hintStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(208, 208, 208, 1),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12))),
                            )
                          : Container(),
                  //         height: 40,
                  //         decoration: BoxDecoration(
                  //             color: const Color.fromRGBO(46, 46, 47, 1),
                  //             borderRadius: BorderRadius.circular(12)),
                  //         margin: const EdgeInsets.only(
                  //             top: 0, left: 30, right: 30),
                  //         child: TextFormField(
                  //             //controller: replayCtrl,
                  //             onFieldSubmitted: (value) {
                  //               comment.addReplay(value, rplyIndex);
                  //               comment.togglecheckreplay();
                  //               rplctrl.clear();
                  //               //commentsProvider.addReplay(value);
                  //             },
                  //             keyboardType: TextInputType.emailAddress,
                  //             //controller: MyController3,
                  //             maxLines: 1,
                  //             //minLines: 10,
                  //             style: const TextStyle(
                  //                 color: Color.fromRGBO(208, 208, 208, 1),
                  //                 fontWeight: FontWeight.w300,
                  //                 fontSize: 15),
                  //             decoration: InputDecoration(
                  //                 suffixIcon: InkWell(
                  //                     onTap: () {
                  //                       // print(commentsProvider.replay);
                  //                       // commentsProvider
                  //                       //     .addReplay(replayCtrl.text);
                  //                     },
                  //                     child: const Icon(
                  //                         FontAwesomeIcons.paperPlane)),
                  //                 border: InputBorder.none,
                  //                 focusedBorder: InputBorder.none,
                  //                 enabledBorder: InputBorder.none,
                  //                 errorBorder: InputBorder.none,
                  //                 disabledBorder: InputBorder.none,
                  //                 fillColor: Colors.transparent,
                  //                 filled: false,
                  //                 hintText: "Add a Replay",
                  //                 contentPadding: const EdgeInsets.only(
                  //                     top: 5, left: 10, bottom: 5),
                  //                 hintStyle: const TextStyle(
                  //                     color: Color.fromRGBO(208, 208, 208, 1),
                  //                     fontWeight: FontWeight.w300,
                  //                     fontSize: 12))),
                  //       ),
                  // comment.Checkreplay == false
                  //     ? Container(
                  //         height: 40,
                  //         decoration: BoxDecoration(
                  //             color: const Color.fromRGBO(46, 46, 47, 1),
                  //             borderRadius: BorderRadius.circular(12)),
                  //         margin: const EdgeInsets.only(
                  //             top: 0, left: 30, right: 30),
                  //         child: TextFormField(
                  //             //controller: replayCtrl,
                  //             onFieldSubmitted: (value) {
                  //               comment.addReplay(value, rplyIndex);
                  //               comment.togglecheckreplay();
                  //               rplctrl.clear();
                  //               //commentsProvider.addReplay(value);
                  //             },
                  //             keyboardType: TextInputType.emailAddress,
                  //             //controller: MyController3,
                  //             maxLines: 1,
                  //             //minLines: 10,
                  //             style: const TextStyle(
                  //                 color: Color.fromRGBO(208, 208, 208, 1),
                  //                 fontWeight: FontWeight.w300,
                  //                 fontSize: 15),
                  //             decoration: InputDecoration(
                  //                 suffixIcon: InkWell(
                  //                     onTap: () {
                  //                       // print(commentsProvider.replay);
                  //                       // commentsProvider
                  //                       //     .addReplay(replayCtrl.text);
                  //                     },
                  //                     child: const Icon(
                  //                         FontAwesomeIcons.paperPlane)),
                  //                 border: InputBorder.none,
                  //                 focusedBorder: InputBorder.none,
                  //                 enabledBorder: InputBorder.none,
                  //                 errorBorder: InputBorder.none,
                  //                 disabledBorder: InputBorder.none,
                  //                 fillColor: Colors.transparent,
                  //                 filled: false,
                  //                 hintText: "Add a Replay",
                  //                 contentPadding: const EdgeInsets.only(
                  //                     top: 5, left: 10, bottom: 5),
                  //                 hintStyle: const TextStyle(
                  //                     color: Color.fromRGBO(208, 208, 208, 1),
                  //                     fontWeight: FontWeight.w300,
                  //                     fontSize: 12))),
                  //       )
                  //     : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  /*comment.Checkreplay == true
                      ? Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(46, 46, 47, 1),
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(
                              top: 0, left: 30, right: 30),
                          child: TextFormField(
                              //controller: replayCtrl,
                              onFieldSubmitted: (value) {
                                comment.addReplay(value, rplyIndex);
                                comment.togglecheckreplay();
                                rplctrl.clear();
                                //commentsProvider.addReplay(value);
                              },
                              keyboardType: TextInputType.emailAddress,
                              //controller: MyController3,
                              maxLines: 1,
                              //minLines: 10,
                              style: const TextStyle(
                                  color: Color.fromRGBO(208, 208, 208, 1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        // print(commentsProvider.replay);
                                        // commentsProvider
                                        //     .addReplay(replayCtrl.text);
                                      },
                                      child: const Icon(
                                          FontAwesomeIcons.paperPlane)),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  fillColor: Colors.transparent,
                                  filled: false,
                                  hintText: "Add a Replay",
                                  contentPadding: const EdgeInsets.only(
                                      top: 5, left: 10, bottom: 5),
                                  hintStyle: const TextStyle(
                                      color: Color.fromRGBO(208, 208, 208, 1),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12))),
                        )
                      : Container()
                      */

                  Container(
                    margin: const EdgeInsets.only(top: 0, left: 15, right: 58),
                    child: const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      style: TextStyle(color: Colors.white),
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'more',
                      trimExpandedText: ' less',
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff828282)),
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff828282)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
