import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterHome extends StatefulWidget {
  const TwitterHome({Key? key}) : super(key: key);

  @override
  State<TwitterHome> createState() => _TwitterHomeState();
}

class _TwitterHomeState extends State<TwitterHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color(0xffF5F8FA),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 30,
                  //height: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.postimg.cc/YSWT3W8R/13ac3e10a4ed96bbdbdad1e1743cf132-1-2.png",
                    ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                ),
                Icon(
                  FontAwesomeIcons.wandMagicSparkles,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color(0xff616161), //color of divider
            height: 0, //height spacing of divider
            thickness: 0.5, //thickness of divier line
            //indent: 25, //spacing at the start of divider
            //endIndent: 25, //spacing at the end of divider
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, left: 20),
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://i.postimg.cc/YSWT3W8R/13ac3e10a4ed96bbdbdad1e1743cf132-1-2.png')),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 16,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("ALi and Abbas Liked your tweet")
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
