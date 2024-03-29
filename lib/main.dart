import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:softwaredesignpatternsapplication/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:softwaredesignpatternsapplication/screens/login.dart';
import 'package:softwaredesignpatternsapplication/screens/navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginApp(),
    );
  }
}
