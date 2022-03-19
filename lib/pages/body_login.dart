// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/Sign_up.dart';
import 'package:flutter_application_1/pages/already_account.dart';
import 'package:flutter_application_1/pages/background_login.dart';
import 'package:flutter_application_1/pages/constant.dart';
import 'package:flutter_application_1/pages/rounded_input_field.dart';
import 'package:flutter_application_1/pages/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
                child: Image.asset(
              "image/icon_3.png",
              height: size.height * 0.18,
            )),
            SizedBox(height: size.height * 0.02),
            Text(
              "LOGIN",
            ),
            SizedBox(height: size.height * 0.01),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            SizedBox(
              width: 150,
              height: 50,
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
                  MaterialPageRoute(builder: (context) => HomeState()));
                },
              ),
            ),
            SizedBox(height: size.height * 0.06),
            AlreadyHaveAnAccountCheck(
              press: () {
              },
            )
          ],
        ),
      ),
    );
  }
}
