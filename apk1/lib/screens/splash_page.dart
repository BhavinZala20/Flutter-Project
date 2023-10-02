import 'dart:async';
import 'package:flutter/material.dart';

import '../apk1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key, required String title}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(
              title: 'Welcome to Home Page',
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image(
          image: AssetImage(
              "assets/launchur_image/icon2.png"), // Provide the correct asset path
        ),
      ),
    );
  }
}
