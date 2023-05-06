import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class InputWidget extends StatelessWidget {
  final Icon preicon;
  final String hint;
  final bool obscure;
  final bool read;
  final TextInputType keyboard;
  final TextEditingController controller;
  const InputWidget(
      {Key? key,
      required this.preicon,
      required this.hint,
      required this.obscure,
      required this.read,
      required this.keyboard,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Container(
      height: mheight * 0.07,
      width: mwidth * 0.8,
      decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(10))),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        obscureText: obscure,
        controller: controller,
        keyboardType: keyboard,
        cursorColor: bgPrimaryColor,
        decoration: InputDecoration(
            prefixIcon: preicon,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
