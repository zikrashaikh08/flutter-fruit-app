import 'package:fruit_app/constant/routes.dart';
import 'package:fruit_app/screens/SplashScreen.dart';
import 'package:fruit_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/LoginPage.dart';
import 'utilis/Routes.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      routes: {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.loginScreen: (context) => Loginpage(),
        Routes.homeScreen: (context) => HomeScreen()
      },
      home: SplashScreen(),
    );
  }
}
