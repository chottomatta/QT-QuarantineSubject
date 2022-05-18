import 'package:flutter/material.dart';
import 'package:sampleproject/components/text_field_container.dart';
import 'package:sampleproject/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText = "",
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: primaryColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
