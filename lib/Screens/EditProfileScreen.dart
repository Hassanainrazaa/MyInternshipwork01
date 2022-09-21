import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/SellerProfile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 50, left: 20),
                  child: const Icon(
                    Icons.arrow_back_ios,
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 50, left: 22),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 80, left: 20),
              child: const Text(
                "Name",
                style: TextStyle(fontSize: 20),
              )),
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 5, left: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Nouman Niazi",
                  hintStyle: TextStyle(color: Colors.white)),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              child: const Text(
                "Tagline",
                style: TextStyle(fontSize: 20),
              )),
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 5, left: 20),
            child: TextFormField(
              decoration: const InputDecoration(hintText: "Enterpreneur"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              child: const Text(
                "Description",
                style: TextStyle(fontSize: 20),
              )),
          Container(
            width: 350,
            decoration: const BoxDecoration(
                //color: Colors.black12,
                ),
            margin: const EdgeInsets.only(top: 18, left: 20),
            child: TextFormField(
                maxLines: 2,
                //minLines: 10,
                style: const TextStyle(
                  fontSize: 18,
                  //color: Colors.blue,
                  //fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    hintText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                    contentPadding: const EdgeInsets.all(30),
                    //prefixIcon: const Icon(Icons.email),
                    //icon: const Icon(Icons.man_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black12,
                          width: 1.0,
                        )))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SellerProfile()),
                  );
                },
                child: Container(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, right: 102, left: 102),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.only(top: 85),
                    child: const Text(
                      "Apply Changes",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
