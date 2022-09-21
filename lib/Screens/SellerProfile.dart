import 'package:flutter/material.dart';

class SellerProfile extends StatelessWidget {
  const SellerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 40, left: 10),
                  child: const Icon(Icons.arrow_back_ios)),
              Container(
                  margin: const EdgeInsets.only(top: 40, right: 10),
                  child: const Icon(Icons.menu))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 15, left: 10),
                  child: const Text(
                    "New",
                    style: TextStyle(fontSize: 15),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 15, right: 10),
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 15),
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 23),
                  child: const Text(
                    "Hey this is my Question?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 5, left: 8),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Reply"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 23),
                  child: const Text(
                    "Hey this is my Question?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 5, left: 8),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Replay"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 60, left: 10),
                  child: const Text(
                    "Previous",
                    style: TextStyle(fontSize: 15),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 60, right: 10),
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 15),
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, left: 23),
                  child: const Text(
                    "Hey this is my Question?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  Text("")
            ],
          ),
        ],
      ),
    );
  }
}
