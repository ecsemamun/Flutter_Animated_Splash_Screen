import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/SplashScreen.dart';

import 'form_validation.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;

  bool isShowPassword = false;

  passwordVisibility() {
    setState(() {
      isShowPassword = true;
    });
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        isShowPassword = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 150),
              child: Text(
                'রিয়েলমিতে\nস্বাগতম',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 130, right: 35),
              height: 230,
              width: 110,
              child: Image.asset("assets/mrealme.png"),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                              onChanged: (value) {
                                email = value;
                              },
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার ইমেইল আইডি দিন !";
                                } else if (!validEmail(value)) {
                                  return "আপনি ভূল ইমেইল আইডি দিয়েছেন !";
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
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                password = value;
                              },
                              style: TextStyle(),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার পাসওয়ার্ড দিন !";
                                }
                                return null;
                              },
                              obscureText: !isShowPassword,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock),
                                  hintText: "পাসওয়ার্ড",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      passwordVisibility();
                                    },
                                    icon: isShowPassword
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'লগিন করুন',
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (_formKey.currentState!
                                            .validate()) {}

                                        final user = await _auth
                                            .signInWithEmailAndPassword(
                                                email: email,
                                                password: password);

                                        if (user != null) {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SplashScreen(),
                                              ));
                                        }
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content:
                                                  Text('সাইন ইন সাকসেসফুলি')),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'register');
                                  },
                                  child: Text(
                                    'সাইন আপ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 18),
                                  ),
                                  style: ButtonStyle(),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'পাসওয়ার্ড ভূলে গেছেন ? ',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 15,
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
