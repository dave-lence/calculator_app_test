// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  bool obscureText = false;
  final IconButton? suffixIcon;
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      // onChanged: (val) {
      //   if (val.isNotEmpty) {
      //     setState(() {
      //       isShowSendButton = true;
      //     });
      //   } else {
      //     setState(() {
      //       isShowSendButton = false;
      //     });
      //   }
      // },
      // onTapOutside: (event) {
      //   setState(() {
      //     showVideoAndGifButtom = true;
      //   });
      // },
      // onTap: () {
      //   setState(() {
      //     showVideoAndGifButtom = false;
      //   });
      // },

      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFE6EDE7),
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
