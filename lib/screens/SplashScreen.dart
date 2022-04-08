import 'dart:async';

import 'package:fruit_app/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
        () => Navigator.pushReplacementNamed(context, Routes.loginScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "Grocery App",
          style: GoogleFonts.poppins(fontSize: 30),
        )),
      ),
    );
  }
}
