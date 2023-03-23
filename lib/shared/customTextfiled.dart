import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  Mytextfield(
      {required this.TextInputTypeee,
      required this.hinttextt,
      required this.ispass});

  TextInputType? TextInputTypeee;
  String? hinttextt;
  bool ispass;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputTypeee,
      obscureText: ispass,
      decoration: InputDecoration(
          hintText: hinttextt,
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
    );
  }
}
