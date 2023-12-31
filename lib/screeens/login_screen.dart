import 'dart:developer';

import 'package:demo1/componets/common_button.dart';
import 'package:demo1/componets/common_text.dart';
import 'package:demo1/componets/common_textfield.dart';
import 'package:demo1/screeens/create_account.dart';
import 'package:demo1/screeens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(text: "Hello\nWelcome Back!"),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  "Water is life. Water is a basic human need. In various lines of life, humans need water.",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff898989),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                CommonTextField(
                    controllerName: emailController,
                    hintText: "Enter Email Id"),
                CommonTextField(
                    controllerName: passwordController,
                    hintText: "Enter Password"),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    const Text("OR"),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 1.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(width: 1.0, color: Colors.grey),
                      ),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/g_logo.png", width: 30.0),
                          const SizedBox(width: 15.0),
                          const Text("Google"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 80.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/F_logo.png", width: 30.0),
                            const SizedBox(width: 15.0),
                            const Text("Google"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have an account?"),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CreateAccount(),
                          ));
                        },
                        child: const Text("Create Account")),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CommonButton(
                  btnText: "Get Started",
                  onTap: () {
                    log("=========email=====${emailController.text},=========pass====${passwordController.text}");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => homescreen(
                          emailData: emailController.text,
                          passworddata: passwordController.text),
                    ));
                  },
                ),
                const SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
