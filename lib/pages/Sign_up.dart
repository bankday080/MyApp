import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/customer.dart';
import 'package:flutter_application_1/pages/background_login.dart';
import 'package:flutter_application_1/pages/body_signup.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  //เตรียม firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  Cutomer myCutomer =
      Cutomer(name: 'name', farm_name: 'farm_name', user_name: 'user_name');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        key: formKey,
      ),
    );
  }
}
