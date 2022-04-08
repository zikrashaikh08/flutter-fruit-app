import 'package:fruit_app/utilis/Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Navigator.pushReplacementNamed(context, MyRoutes.homeinRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.0,
              ),
              Image.asset(
                "assets/images/logo.jpeg",
                width: 397,
                height: 316,
              ),
              Text(
                "Login page",
                style: TextStyle(
                  // color: Colors.deepPurple,
                  fontSize: 29,
                ),
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  // color: Colors.deepPurple,
                  fontSize: 29,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: 'Username'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Empty";
                        } else if (value.length < 8) {
                          return "Password incorrect";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: 'Password'),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    MaterialButton(
                      onPressed: () => movetohome(context),
                      color: Colors.greenAccent,
                      minWidth: double.infinity,
                      height: 60,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 24, color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
