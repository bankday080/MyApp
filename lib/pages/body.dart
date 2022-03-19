// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Sign_up.dart';
import 'package:flutter_application_1/pages/constant.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/background.dart';

import 'package:flutter_application_1/pages/Login.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO SYSTEM",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 148, 89)),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset("image/icon_2.png", width: size.width * 0.7),
            SizedBox(height: size.height * 0.06),
            SizedBox(
              width: 250,
              height: 45,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Color.fromARGB(255, 105, 81, 0)),
                ),
                color: kPrimaryColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              width: 250,
              height: 45,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Color.fromARGB(255, 105, 81, 0)),
                ),
                color: kPrimaryLightColor,
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
