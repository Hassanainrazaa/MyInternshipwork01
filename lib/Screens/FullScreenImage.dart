import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:speedforcetasks/Providers/Comment.dart';

class FullScreenComments extends StatefulWidget {
  const FullScreenComments({Key? key}) : super(key: key);

  @override
  State<FullScreenComments> createState() => _FullScreenCommentsState();
}

class _FullScreenCommentsState extends State<FullScreenComments> {
  int? rplyIndex;
  TextEditingController cmtctrl = TextEditingController();
  TextEditingController rplctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Screen Build");
    final comment = Provider.of<Comment>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        const Text(
                          "Username : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "UserName : ${comment.getcmt[index1][0]}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: comment.c[index1][1].length,
                            itemBuilder: (context, ind) {
                              return Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  margin: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "UserName : ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        comment.getcmt[index1][1][ind]
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ));
                            }),
                        // Text(
                        //   commentProvider.getcmt[index1][1]
                        //       .getRange(2, commentProvider.c.length)
                        //       .toString(),
                        // ),
                        Container(
                          margin: const EdgeInsets.only(left: 100),
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
                                    color: Color.fromARGB(156, 238, 232, 232)),
                              )),
                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
