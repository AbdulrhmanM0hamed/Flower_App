import 'package:flower_app/shared/customTextfiled.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 64),
              Mytextfield(
                  TextInputTypeee: TextInputType.emailAddress,
                  hinttextt: "Enter your Email",
                  ispass: false),
              const SizedBox(height: 33),
              Mytextfield(
                TextInputTypeee: TextInputType.text,
                hinttextt: "Enter your Password",
                ispass: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
