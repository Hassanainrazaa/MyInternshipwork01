import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:speedforcetasks/Providers/Comment.dart';

class ViewALL extends StatefulWidget {
  const ViewALL({Key? key}) : super(key: key);

  @override
  State<ViewALL> createState() => _ViewALLState();
}

class _ViewALLState extends State<ViewALL> {
  int? rplyIndex;
  TextEditingController cmtctrl = TextEditingController();
  TextEditingController rplctrl = TextEditingController();
  FocusNode? comment02;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    comment02 = FocusNode();
  }

  @override
  void dispose() {
    //comment02.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final comment = Provider.of<Comment>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: comment.getcmt.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index1) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
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
                                        color:
                                            const Color.fromRGBO(46, 46, 47, 1),
                                        borderRadius:
                                            BorderRadius.circular(11)),
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5, right: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Username",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
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
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "3m",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              156, 238, 232, 232)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                        onTap: () {
                                          print("Text Pressed");
                                          rplyIndex = index1;
                                          comment.togglecheckreplay();
                                          //comment.toggleCheckbox();
                                          print(comment.Checkreplay.toString());
                                        },
                                        child: const Text(
                                          "Reply",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromARGB(
                                                  156, 238, 232, 232)),
                                        )),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 5,
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: comment.c[index1][1].length,
                                itemBuilder: (context, ind) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 50),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                  "https://i.postimg.cc/MKggLJrc/Ellipse-110-1.png",
                                                ),
                                              ),
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
                                                    "${comment.getcmt[index1][1][ind]}",
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 50),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 30),
                                              child: const Text(
                                                "3m",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        156, 238, 232, 232)),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 30),
                                              child: InkWell(
                                                  onTap: () {
                                                    print("Text Pressed");
                                                    rplyIndex = index1;
                                                    comment.togglecheckreplay();
                                                    //comment.toggleCheckbox();
                                                    print(comment.Checkreplay
                                                        .toString());
                                                  },
                                                  child: const Text(
                                                    "Reply",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color.fromARGB(
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
                                  );
                                  // Container(
                                  //     padding: const EdgeInsets.only(top: 5),
                                  //     margin: const EdgeInsets.only(left: 70),
                                  //     child: Row(
                                  //       children: [
                                  //         const SizedBox(
                                  //           width: 25,
                                  //           height: 25,
                                  //           child: CircleAvatar(
                                  //             backgroundImage: NetworkImage(
                                  //                 "https://i.postimg.cc/MKggLJrc/Ellipse-110-1.png"),
                                  //           ),
                                  //         ),
                                  //         const SizedBox(
                                  //           width: 10,
                                  //         ),
                                  //         const Text(
                                  //           "UserName : ",
                                  //           style:
                                  //               TextStyle(color: Colors.white),
                                  //         ),
                                  //         Text(
                                  //           comment.getcmt[index1][1][ind]
                                  //               .toString(),
                                  //           style: const TextStyle(
                                  //             color: Colors.white,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ));
                                }),
                            // Text(
                            //   commentProvider.getcmt[index1][1]
                            //       .getRange(2, commentProvider.c.length)
                            //       .toString(),
                            // ),

                            (comment.c[index1][1].length >= 3)
                                ? InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ViewALL()),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      child: const Text(
                                        "View All",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        );
                      }),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      comment.CheckComment == false &&
                              comment.Checkreplay == true
                          ? Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(46, 46, 47, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              margin: const EdgeInsets.only(
                                  top: 0, left: 30, right: 30),
                              child: TextFormField(
                                  autocorrect: true,
                                  autofocus: true,
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
                                          color:
                                              Color.fromRGBO(208, 208, 208, 1),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12))),
                            )
                          : comment.Checkreplay == false
                              ? Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(46, 46, 47, 1),
                                      borderRadius: BorderRadius.circular(12)),
                                  margin: const EdgeInsets.only(
                                      top: 0, left: 30, right: 30),
                                  child: TextFormField(
                                      autofocus: true,
                                      autocorrect: true,
                                      focusNode: comment02,
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
                                          color:
                                              Color.fromRGBO(208, 208, 208, 1),
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
                                              color: Color.fromRGBO(
                                                  208, 208, 208, 1),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12))),
                                )
                              : Container(),
                    ],
                  ),
                ),
              ]),
            )));
  }
}
