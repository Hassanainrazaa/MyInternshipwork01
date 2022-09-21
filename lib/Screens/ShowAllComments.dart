// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:speedforcetasks/Providers/Comment.dart';

// class ShoAllComments extends StatefulWidget {
//   const ShoAllComments({Key? key}) : super(key: key);

//   @override
//   State<ShoAllComments> createState() => _ShoAllCommentsState();
// }

// class _ShoAllCommentsState extends State<ShoAllComments> {
//   TextEditingController iconsCtrl = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     Widget CommentPattren(index, comment) {
//       final commentProvider = Provider.of<Comment>(context);
//       //index = commentProvider.comment[index];
//       return Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.only(left: 10),
//               padding: const EdgeInsets.only(left: 5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       RichText(
//                         text: TextSpan(
//                           style: const TextStyle(color: Colors.white),
//                           children: [
//                             const TextSpan(
//                               text: 'UserName :  ',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             TextSpan(
//                               text: comment,
//                             ),
//                           ],
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           print(index.toString());
//                           commentProvider.deleteComment(index);
//                         },
//                         child: const Icon(
//                           Icons.delete,
//                           color: Colors.white,
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       );
//     }

//     Widget _buildCommentList() {
//       return Consumer<Comment>(
//         builder: (BuildContext context, value, Widget? child) {
//           return SizedBox(
//             //height: 100,
//             child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: value.comment.length,
//               itemBuilder: (
//                 context,
//                 index,
//               ) {
//                 // if (index < _comments.length) {
//                 return CommentPattren(index, value.comment[index]);
//                 //_buildCommentItem(value.comment[index], index);
//                 // }
//               },
//             ),
//           );
//         },
//       );
//     }

//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           Expanded(child: _buildCommentList()),
//           Consumer<Comment>(
//             builder: (BuildContext context, value1, child) {
//               print(value1.comment);
//               return value1.CheckComment == true
//                   ? Container(
//                       height: 40,
//                       decoration: BoxDecoration(
//                           color: const Color.fromRGBO(46, 46, 47, 1),
//                           borderRadius: BorderRadius.circular(12)),
//                       margin:
//                           const EdgeInsets.only(top: 0, left: 30, right: 30),
//                       child: TextFormField(
//                           controller: iconsCtrl,
//                           onFieldSubmitted: (value) {
//                             value1.addComments(value);
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                           //controller: MyController3,
//                           maxLines: 1,
//                           //minLines: 10,
//                           style: const TextStyle(
//                               color: Color.fromRGBO(208, 208, 208, 1),
//                               fontWeight: FontWeight.w300,
//                               fontSize: 15),
//                           decoration: InputDecoration(
//                               suffixIcon: InkWell(
//                                   onTap: () {
//                                     value1.addComments(iconsCtrl.text);
//                                     iconsCtrl.clear();
//                                   },
//                                   child:
//                                       const Icon(FontAwesomeIcons.paperPlane)),
//                               border: InputBorder.none,
//                               focusedBorder: InputBorder.none,
//                               enabledBorder: InputBorder.none,
//                               errorBorder: InputBorder.none,
//                               disabledBorder: InputBorder.none,
//                               fillColor: Colors.transparent,
//                               filled: false,
//                               hintText: "Add a Comment",
//                               contentPadding: const EdgeInsets.only(
//                                   top: 5, left: 10, bottom: 5),
//                               hintStyle: const TextStyle(
//                                   color: Color.fromRGBO(208, 208, 208, 1),
//                                   fontWeight: FontWeight.w300,
//                                   fontSize: 12))),
//                     )
//                   : Container();
//             },
//           ),
//         ],
//       ),
//     ));
//   }
// }
