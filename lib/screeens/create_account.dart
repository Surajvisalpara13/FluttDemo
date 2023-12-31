import 'dart:developer';

import 'package:demo1/componets/common_text.dart';
import 'package:demo1/screeens/home_screen.dart';
import 'package:demo1/screeens/login_screen.dart';
import 'package:flutter/material.dart';

import '../componets/common_button.dart';
import '../componets/common_textfield.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(text: "Create\nNew Account"),
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
                    controllerName: emailController, hintText: "Full Name"),
                CommonTextField(
                    controllerName: passwordController, hintText: "Enter Email Id"),
                CommonTextField(
                    controllerName: passwordController, hintText: "Enter Password"),
                const SizedBox(
                  height: 20.0,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start  ,
                  children: [
                    Checkbox(
                      tristate: true,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    const Text("I Agree to the "),
                    InkWell(onTap: () {}, child: const Text("Terms of Service")),
                    const Text(" and "),
                    InkWell(onTap: () {}, child: const Text("Privacy Policy")),

                  ],
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
                    const Text("Have an account? "),
                    InkWell(onTap: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),));}, child:const Text("Login")),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // CommonButton(
                //   btnText: "Get Started",
                //   onTap: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const homescreen(),));
                //    // log("=========email=====${emailController.text},=========pass====${passwordController.text}");
                //   },
                // ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
