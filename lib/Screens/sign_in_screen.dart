import 'package:firebase2/Screens/Home.dart';
import 'package:firebase2/Screens/otp.dart';
import 'package:firebase2/Screens/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/firebase_services.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController phoneNumber =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool passwordVisible1 = false;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 231, 237),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 80,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text("Welcome to Ecomik",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25))),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Hello there, sign in to continue",
                    style: TextStyle(color: Colors.black54),
                  )),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 25, bottom: 10),
                child: Text(
                  "Email address",
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
                      hintText: "contact@gmail.com",
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                      prefixIcon: Icon(Icons.email_outlined),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                    obscureText: passwordVisible1,
                    decoration: InputDecoration(
                        hintText: "......",
                        contentPadding: const EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_outline),
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible1
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible1 = !passwordVisible1;
                              },
                            );
                          },
                        )),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 20),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (() {
                      // OTPScreen();
                    }),
                    child: const Text("sign up"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or Sigin in with social account",
                    style: TextStyle(color: Colors.black54),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: (() async {
                        await FirebaseServices().SignInwithGoogle();
                        if (FirebaseAuth.instance.currentUser!.email != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      }),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                      child: const Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/2991/2991148.png")),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                      child: const Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/15/15476.png")),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                      child: const Image(
                          image: NetworkImage(
                              "https://www.iconpacks.net/icons/2/free-twitter-logo-icon-2429-thumb.png")),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black54),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sign_up_screen()),
                      );
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
