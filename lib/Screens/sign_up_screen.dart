// import 'package:firebase2/Screens/Home.dart';
import 'package:firebase2/Screens/otp.dart';
import 'package:firebase2/Screens/sign_in_screen.dart';
// import 'package:firebase2/services/firebase_services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// ignore: camel_case_types
class Sign_up_screen extends StatefulWidget {
  const Sign_up_screen({super.key});

  @override
  State<Sign_up_screen> createState() => _Sign_up_screenState();
}

bool passwordVisible = false;

// ignore: camel_case_types
class _Sign_up_screenState extends State<Sign_up_screen> {
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 231, 237),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 60,
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // <-- Radius
                      )),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text("Getting Started",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            const SizedBox(
              height: 10,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Hello there, sign up to continue",
                  style: TextStyle(color: Colors.black54),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 25, bottom: 10),
              child: Text(
                "Your name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Your name",
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    prefixIcon: Icon(Icons.person_outline),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 25, bottom: 10),
              child: Text(
                "Phone number",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  controller: phoneNumber,
                  decoration: const InputDecoration(
                    hintText: "Phone number",
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    prefixIcon: Icon(Icons.phone_android),
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 25, bottom: 10),
              child: Text(
                "Password",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                      hintText: "......",
                      contentPadding: const EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      prefixIcon: const Icon(Icons.lock_outline),
                      fillColor: Colors.white,
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Checkbox(value: false, onChanged: null),
                  const Text(
                    "By signing up, i agree to the",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Terms of service ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.deepPurple),
                ),
                const Text(
                  "and",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const Text(
                  " Privacy policy",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.deepPurple),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPScreen(phoneNumber.text)));
                    OTPScreen(phoneNumber.text);
                  }),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  child: const Text("sign up"),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Alredy have an account?",
                  style: TextStyle(color: Colors.black54),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninScreen()),
                    );
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
