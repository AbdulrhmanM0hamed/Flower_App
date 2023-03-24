import 'package:flower_app/pages/login.dart';
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
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold();
                    },
                  ),
                );
              },
              child: Text(
                "sign up ",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Center(
                    child: Text(
                      "Already have an account  ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
