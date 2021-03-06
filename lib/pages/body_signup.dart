// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/customer.dart';
import 'package:flutter_application_1/pages/already_Signin.dart';
import 'package:flutter_application_1/pages/already_account.dart';
import 'package:flutter_application_1/pages/background_login.dart';
import 'package:flutter_application_1/pages/constant.dart';
import 'package:flutter_application_1/pages/rounded_input_field.dart';
import 'package:flutter_application_1/pages/rounded_password_field.dart';

final formKey = GlobalKey<FormState>();
Cutomer myCutomer =
    Cutomer(name: 'name', farm_name: 'farm_name', user_name: 'user_name');
final Future<FirebaseApp> firebase = Firebase.initializeApp();

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Size size = MediaQuery.of(context).size;
            return Background(
              child: SingleChildScrollView(
                key: formKey,
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
                      "SIGNUP",
                    ),
                    SizedBox(height: size.height * 0.01),
                    RoundedInputField(
                      hintText: "Your name",
                      onChanged: (value) {},
                      onSaved: (farm_name) {
                        myCutomer.farm_name = farm_name!;
                      },
                    ),
                    SizedBox(height: size.height * 0.01),
                    RoundedInputField(
                      hintText: "Farm name",
                      onChanged: (value) {},
                      onSaved: (farm_name) {
                        myCutomer.farm_name = farm_name!;
                      },
                    ),
                    // TextFormField(
                    //   onSaved: (farm_name) {
                    //     myCutomer.farm_name = farm_name!;
                    //   },
                    // ),
                    RoundedInputField(
                      hintText: "Username",
                      onChanged: (value) {},
                      onSaved: (user_name) {
                        myCutomer.user_name = user_name!;
                      },
                    ),
                    // TextFormField(
                    //   onSaved: (user_name) {
                    //     myCutomer.user_name = user_name!;
                    //   },
                    // ),
                    SizedBox(height: size.height * 0.01),
                    RoundedPasswordField(
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          "SIGNUP",
                          style:
                              TextStyle(color: Color.fromARGB(255, 105, 81, 0)),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState?.save();
                          }

                          //Navigator.push(context,
                          //MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                      ),
                    ),
                    SizedBox(height: size.height * 0.06),
                    AlreadySignin(
                      press: () {},
                    )
                  ],
                ),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
