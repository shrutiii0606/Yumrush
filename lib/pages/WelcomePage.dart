import 'package:flutter/material.dart';
import '../constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to YumRush",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            children: [
              const Spacer(),
              Container(
                width: 250,
                height: 250,
                child: const Image(image: AssetImage('assets/welcome.png')),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 8,
                child: Hero(
                  tag: "Login_btn",
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("Login".toUpperCase()),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 8,
                child: Hero(
                  tag: "Signup_btn",
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryLightColor,
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      "Sign Up".toUpperCase(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
