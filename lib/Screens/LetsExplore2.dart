import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/SellerTit.dart';

class LetsExplore2 extends StatefulWidget {
  const LetsExplore2({Key? key}) : super(key: key);

  @override
  State<LetsExplore2> createState() => _LetsExplore2State();
}

class _LetsExplore2State extends State<LetsExplore2> {
  bool Selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Image.network(
                    "https://i.postimg.cc/yNWhD0Sr/logo.png",
                    width: 124,
                    height: 90,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: const Text(
                    "Lets get Started !",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: const Text(
                    "Choose Language",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Selected = !Selected;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Selected == true ? Colors.black12 : Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: const [
                        Text("English"),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.flag_circle)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Selected = !Selected;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        color: Selected == true ? Colors.white : Colors.black12,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: const [
                        Text("Arabic"),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.flag_rounded),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SellerTit()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(80, 8, 80, 8),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
                //const TextField(
                //decoration: const InputDecoration(
                //    hintText: "English", border: const OutlineInputBorder()),
                //)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
