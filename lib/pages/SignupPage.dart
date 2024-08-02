import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/already_have_account.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: kDefaultPadding * 3),
          Text(
            "Sign Up".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 180,
                width: 250,
                child: const Image(
                  image: AssetImage('assets/sign.jpg'),
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
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
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 8,
                      child: Hero(
                        tag: "signup_btn",
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text("Sign Up".toUpperCase()),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
                AlreadyHaveAnAccount(
                  login: false,
                  press: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
            width: size.width * 0.8,
            child: const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xFFD9D9D9),
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xFFD9D9D9),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: "assets/facebook.png",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/twitter.jpg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/google.jpg",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  const SocialIcon({super.key, this.iconSrc, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image(
          height: 20,
          width: 20,
          image: AssetImage(
            iconSrc!,
          ),
        ),
      ),
    );
  }
}
