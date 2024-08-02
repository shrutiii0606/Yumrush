import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/already_have_account.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LOGIN",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kDefaultPadding / 4),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                child: const Image(image: AssetImage('assets/login.png')),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Form(
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 8,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        cursorColor: kPrimaryColor,
                        onSaved: (email) {},
                        decoration: const InputDecoration(
                          hintText: "Your email",
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(kDefaultPadding),
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          cursorColor: kPrimaryColor,
                          decoration: const InputDecoration(
                            hintText: "Your Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(kDefaultPadding),
                              child: Icon(Icons.lock),
                            ),
                          ),
                        ),
                      ),
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
                        tag: "login_btn",
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text("Login".toUpperCase()),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
                AlreadyHaveAnAccount(press: () {
                  Navigator.pushNamed(context, '/signup');
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
