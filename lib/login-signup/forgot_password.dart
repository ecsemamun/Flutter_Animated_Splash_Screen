import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/SplashScreen.dart';
import 'package:flutter_animated_splash_screen/login-signup/My_Login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'form_validation.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({Key? key}) : super(key: key);

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  TextEditingController forgetPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 300.0,
                  child: Lottie.network(
                      "https://assets6.lottiefiles.com/packages/lf20_bnofreve.json"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    controller: forgetPasswordController,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "আপনার ইমেইল আইডি দিন !";
                      } else if (!RegExp(
                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'আপনি ভূল ইমেইল আইডি দিয়েছেন !';
                      }
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: Icon(Icons.email),
                        hintText: "ইমেইল",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var forgetEmail = forgetPasswordController.text.trim();
                      try {
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: forgetEmail)
                            .then((value) => {
                              print("Email Sent"),
                        Fluttertoast.showToast(msg: 'Please Check your mail inbox or spam folder'),
                              Get.off(()=> const MyLogin()),
                            });
                      } on FirebaseAuthException catch (e) {
                        print("Error $e");
                      }
                    },
                    child: Text("Forgot Password"))
              ],
            ),

          ),
        ),
      ),
    );
  }
}
