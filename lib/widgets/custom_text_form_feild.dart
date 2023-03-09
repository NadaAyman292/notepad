import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild({
    super.key,
    this.suffixIcon,
    this.textInputType,
    required this.hinttext,
    required this.prefixIcon,
  });
  TextInputType? textInputType;
  String hinttext;
  IconData prefixIcon;

  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextFormField(
        cursorHeight: 20,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            prefixIcon: Icon(prefixIcon),
            prefixIconColor: Colors.grey,
            hintText: hinttext,
            contentPadding: EdgeInsets.zero),
      ),
    );
  }
}
