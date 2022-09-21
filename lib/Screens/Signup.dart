import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/LoginScreen.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text("Create Account")),
                Container(
                  //transformAlignment: ,
                  margin: const EdgeInsets.only(left: 80),
                  child: const CircleAvatar(
                    radius: 35,
                    child: Icon(Icons.camera),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            //const SizedBox(
            //width: 500,
            //child:
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
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: "Name",
                      label: const Text("Enter your Name"),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(30),
                      hintText: "Phone Number",
                      label: const Text("Enter Your Phone Number"),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
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
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(30),
                      hintText: "Gender",
                      label: const Text("Choose your Gender"),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
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
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(30),
                      hintText: "Password",
                      label: const Text("Your Password"),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
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
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(30),
                      hintText: "Confirm Password",
                      label: const Text("Confrim Password"),
                      //icon: const Icon(Icons.man_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          )))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: const Text(
                  "By sigining you are agreeing to our terms and policy notice"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  "Registor Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text("Already have an account ?")),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                //margin: const EdgeInsets.only(top: 28),
                child: const Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
