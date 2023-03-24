import 'package:flutter/material.dart';
import 'package:flower_app/shared/customTextfiled.dart';

class myRegister extends StatelessWidget {
  const myRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mytextfield(
              TextInputTypeee: TextInputType.text,
              hinttextt: 'Enter your user name',
              ispass: false,
            ),
            SizedBox(
              height: 25,
            ),
            Mytextfield(
              TextInputTypeee: TextInputType.emailAddress,
              hinttextt: 'Enter your Email',
              ispass: false,
            ),
            SizedBox(
              height: 25,
            ),
            Mytextfield(
              TextInputTypeee: TextInputType.text,
              hinttextt: 'Enter your password',
              ispass: true,
            ),
          ],
        ),
      ),
    );
  }
}
