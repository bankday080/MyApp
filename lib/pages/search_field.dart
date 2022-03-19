import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/text_field_container.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const SearchField({
    Key? key,
    this.hintText = "Search",
    this.icon = Icons.search,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged : onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color.fromARGB(255, 255, 191, 53),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}