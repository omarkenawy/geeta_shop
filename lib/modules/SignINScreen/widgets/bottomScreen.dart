import 'package:flutter/material.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/global/widgets/customButton.dart';
import 'package:geeta_shop/global/widgets/customTextFormField.dart';

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({super.key});

  @override
  State<Bottomscreen> createState() => _BottomscreenState();
}

class _BottomscreenState extends State<Bottomscreen> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: TextStyle(
                  fontFamily: Constans.mainFont, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Customtextformfield(
              hintText: "Email",
              obscureText: true,
              PrefIcon: Icon(Icons.email_outlined),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Password",
              style: TextStyle(
                  fontFamily: Constans.mainFont, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Customtextformfield(
              hintText: "Enter Your Password",
              obscureText: true,
              PrefIcon: Icon(Icons.lock_outline),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: ischecked,
                    onChanged: (newValue) {
                      setState(() {
                        ischecked = newValue!;
                      });
                    }),
                Text(
                  "Remember me",
                  style: TextStyle(fontFamily: Constans.mainFont, fontSize: 12),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot your password?",
                      style: TextStyle(fontSize: 12),
                    ))
              ],
            ),
            Center(
              child: SizedBox(
                width: 320,
                height: 50,
                child: CustomButton(
                    onPressed: () {},
                    text: "LOG IN",
                    BorderColor: Constans.darkPurple,
                    Buttoncolor: Constans.darkPurple,
                    ButtonTextColor: Constans.white,
                    Wsize: 20,
                    Hsize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not registered yet?",
                  style: TextStyle(fontSize: 12, color: Constans.black),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
