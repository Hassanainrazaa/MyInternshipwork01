import 'package:flutter/material.dart';
import 'package:speedforcetasks/Screens/ForgetPassScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  )),
            ],
          ),
          Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: const Text(
                      "Glad to meet you again!, please login to use\n the app.")),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  //borderRadius: BorderRadius.all(15)
                ),
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                //padding: const EdgeInsets.all(50),
                height: 50,
                width: 320,
                child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(30),
                        hintText: "Email or Mobile number",
                        label: const Text("Enter your email or mobile number"),
                        //icon: const Icon(Icons.man_rounded),
                        prefixIcon: const Icon(Icons.mail),
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
                        prefixIcon: const Icon(Icons.password),
                        //icon: const Icon(Icons.man_rounded),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                              width: 1.0,
                            )))),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 4, 50, 0),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgetPass()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.fromLTRB(120, 20, 120, 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text("Sign in with accounts")),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Image.network(
                          "https://i.postimg.cc/4dhrLyhX/apple-1.png")),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Image.network(
                          "https://i.postimg.cc/VvkXsrB8/facebook-1.png")),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Image.network(
                          "https://i.postimg.cc/MH3Vn6dj/google-1.png")),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Image.network(
                          "https://i.postimg.cc/c1FQ9h04/instagram-1.png")),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    width: 120,
                    height: 3,
                    decoration: const BoxDecoration(color: Colors.black12),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                    child: const Text("OR"),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    //padding: const EdgeInsets.symmetric(horizontal: 50),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    width: 105,
                    height: 3,
                    decoration: const BoxDecoration(color: Colors.black12),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Dont have an Account ? "),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    width: 120,
                    height: 3,
                    decoration: const BoxDecoration(color: Colors.black12),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                    child: const Text("OR"),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    //padding: const EdgeInsets.symmetric(horizontal: 50),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    width: 105,
                    height: 3,
                    decoration: const BoxDecoration(color: Colors.black12),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text("Enter as a Guest"))
            ],
          )
        ],
      ),
    ));
  }
}
