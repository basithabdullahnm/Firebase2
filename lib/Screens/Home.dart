import 'package:firebase2/Screens/sign_in_screen.dart';
import 'package:firebase2/Screens/sign_up_screen.dart';
import 'package:firebase2/services/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
              const SizedBox(
                height: 20,
              ),
              // Text("${FirebaseAuth.instance.currentUser!.displayName}"),
              // Text("${FirebaseAuth.instance.currentUser!.email}"),
              
              ElevatedButton(
                onPressed: () async {
                  await FirebaseServices().signOut();
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Sign_up_screen()));
                },
                child: const Text(
                  'Logout',
                ),
              ),
            ],
          ),
        ));
  }
}
