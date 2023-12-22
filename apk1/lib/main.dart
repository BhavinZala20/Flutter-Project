import 'package:apk1/firebase_options.dart';
import 'package:apk1/screens/community_page.dart';
import 'package:apk1/screens/home_page.dart';
import 'package:apk1/screens/info_exam_page.dart';
import 'package:apk1/screens/login_page.dart';
// import 'package:apk1/screens/login_page.dart';
import 'package:apk1/screens/quizz_page.dart';
import 'package:apk1/screens/winner_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'screens/login_page.dart';
import 'screens/splash_page.dart';

void main() async {
  // Set Get.testMode to true when testing
  Get.testMode = true;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIO Defense',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(
          // title: 'Home',
          ),
    );
  }
}
