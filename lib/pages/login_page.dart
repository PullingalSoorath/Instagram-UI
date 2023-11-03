import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/pages/loadingsplashscreen.dart';
import 'package:instagramproject/widgets/gradient_color.dart';
import 'package:instagramproject/widgets/login_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  // String myEmail = 'pullingal@gmail.com';
  // String password = 'Pullingal@123';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Define predefined username and password
  final String predefinedUsername = 'pullingal@gmail.com';
  final String predefinedPassword = 'Pullingal@123';

  // Function to check if the entered username and password are correct
  bool isCredentialsValid() {
    String enteredUsername = usernameController.text.trim();
    String enteredPassword = passwordController.text.trim();

    return enteredUsername == predefinedUsername &&
        enteredPassword == predefinedPassword;
  }

  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: CupertinoAlertDialog(
            title: const Text('Login Successful'),
            content: const Text('You are logged in!'),
            actions: <Widget>[
              ElevatedButton(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.blue),
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                ),
                child: const Text('OK'),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString("email", "useremail@gmail.com");

                  // ignore: use_build_context_synchronously
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoadingSplashScreen(),
                      ),
                      (route) => false);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void showAlertErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          blendMode: BlendMode.srcIn,
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: CupertinoAlertDialog(
            title: const Text(
              'Error',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: const Text(
              'Sorry There was a problem with your request!',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  foregroundColor: MaterialStatePropertyAll(Colors.blue),
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                ),
                child: const Text('Dismiss'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the alert box
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void loading() {
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.black54,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(24),
          title: Center(
            child: BackdropFilter(
              // filter: ColorFilter.mode(Colors.black, BlendMode.colorBurn),
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: const CircularProgressIndicator(
                strokeWidth: 1.5,
                color: Colors.white,
                // backgroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        );
      },
    );
  }

//email validatorasa
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }
    final emailRegExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  //password
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    final emailRegExp = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter the valid Password';
    }
    return null;
  }

  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Theme.of(context).colorScheme.background
          : const Color.fromARGB(255, 34, 33, 33),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Fontspring',
                fontSize: 40, fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary, // Text color
              ),
            ),
            const Text(
              'Sign In and use more features',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Form(
                key: _formKey,
                onChanged: () {
                  _formKey.currentState!.validate();
                },
                child: Column(
                  children: [
                    LoginTextField(
                      controller: usernameController,
                      icon: Icons.person,
                      fieldText: 'Email',
                      obscureTexts: false,
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 15),
                    LoginTextField(
                      controller: passwordController,
                      suffixIcon: passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      suffixPress: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icons.lock,
                      fieldText: 'Enter your password',
                      obscureTexts: !passwordVisible,
                      validator: validatePassword,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          GradientColor(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: Colors.white,
                                  ),
                                  height: 40,
                                  width: double.infinity,
                                )
                              ],
                            ),
                          ),
                          const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          loading();
                          Future.delayed(const Duration(seconds: 3), () {
                            Navigator.of(context).pop();
                          });

                          Future.delayed(
                            const Duration(seconds: 3),
                            () {
                              if (isCredentialsValid()) {
                                showAlertDialog();
                              } else {
                                showAlertErrorDialog();
                              }
                            },
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Forgot your login details? ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        // style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            onEnter: (event) {},
                            text: 'Get help signing in',
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/facebook-6.svg',
                          height: 18,
                          // ignore: deprecated_member_use
                          // color: Theme.of(context).colorScheme.primary,

                          // ignore: deprecated_member_use
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                children: [
                  TextSpan(
                    onEnter: (event) {},
                    text: 'Sign up',
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            // LoadingDots(),
          ],
        ),
      ),
    );
  }
}
