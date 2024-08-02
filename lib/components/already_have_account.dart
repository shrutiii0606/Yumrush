import 'package:flutter/material.dart';
import 'package:yumrush/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccount({super.key, this.login = true, this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ?" : "Already have an Account ?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
            onTap: press as void Function()?,
            child: Text(
              login ? "Sign Up" : "Sign In",
              style: const TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    );
  }
}
