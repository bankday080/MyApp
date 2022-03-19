import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color.fromARGB(255, 255, 191, 53),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color.fromARGB(255, 255, 191, 53),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
