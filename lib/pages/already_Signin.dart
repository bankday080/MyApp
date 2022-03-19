import 'package:flutter/material.dart';

class AlreadySignin extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadySignin({
    Key? key, 
    this.login = true, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Already have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Color.fromARGB(255, 105, 81, 0)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
              login ? "Sign Up" : "Sign In",
              style: TextStyle(
                color: Color.fromARGB(255, 105, 81, 0),
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    );
  }
}
