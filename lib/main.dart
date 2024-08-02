import 'package:flutter/material.dart';
import 'package:yumrush/pages/HomePage.dart';
import 'package:yumrush/pages/SignupPage.dart';
import 'package:yumrush/pages/loginPage.dart';
import 'constants.dart';
import 'pages/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YumRush',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              minimumSize: const Size(double.infinity, 56),
              maximumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
        routes: {
          "/": (context) => const WelcomePage(),
          "/login": (context) => const LoginPage(),
          "/signup": (context) => const SignupPage(),
          "/home": (context) => const HomePage(),
        });
  }
}
