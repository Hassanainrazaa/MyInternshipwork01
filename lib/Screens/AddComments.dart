import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddComment extends StatefulWidget {
  const AddComment({Key? key}) : super(key: key);

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  final List<String> _comments = [];

  addComments(String val) {
    setState(() {
      _comments.add(val);
    });
  }

  Widget _buildCommentList() {
    return ListView.builder(
        itemCount: _comments.length,
        itemBuilder: (context, index) {
          // if (index < _comments.length) {
          return _buildCommentItem(_comments[index]);
          // }
        });
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.userCircle),
      title: const Text("UserName"),
      subtitle: Text(comment),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(child: _buildCommentList()),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              //borderRadius: BorderRadius.all(15)
            ),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            //padding: const EdgeInsets.all(50),
            height: 50,
            width: 320,
            child: TextFormField(
                onFieldSubmitted: (value) {
                  addComments(value);
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(30),
                    hintText: "Name",
                    label: const Text("Enter your Email"),
                    //icon: const Icon(Icons.man_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black12,
                          width: 1.0,
                        )))),
          ),
          // TextFormField(
          //     decoration: InputDecoration(
          //         suffixIcon: InkWell(
          //             onTap: () {
          //               addComments();
          //             },
          //             child: const Icon(Icons.send)),
          //         contentPadding: const EdgeInsets.all(30),
          //         hintText: "Email or Mobile number",
          //         label: const Text("Enter your email or mobile number"),
          //         //icon: const Icon(Icons.man_rounded),
          //         prefixIcon: const Icon(Icons.mail),
          //         enabledBorder: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(15),
          //             borderSide: const BorderSide(
          //               color: Colors.black12,
          //               width: 1.0,
          //             )))),
        ],
      ),
    ));
  }
}
