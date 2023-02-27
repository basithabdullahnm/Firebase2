import 'package:firebase2/Screens/sign_in_screen.dart';
import 'package:firebase2/Screens/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    home: Sign_up_screen(),
    debugShowCheckedModeBanner: false,
  ));
}
