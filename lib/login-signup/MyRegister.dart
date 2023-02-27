import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My_Login.dart';
import 'form_validation.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final _formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;

  bool isShowPassword = false;

  passwordVisibility() {
    setState(() {
      isShowPassword = true;
    });
    Future.delayed(Duration(seconds: 4)).then((value) {
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
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 5),
              child: Text(
                'একাউন্ট\nতৈরি করুন !',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              height: 230,
              width: 110,
              child: Image.asset("assets/mrealme.png"),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
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
                              style: TextStyle(color: Colors.white),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার নাম লিখুন !";
                                } else if (value!.length < 7) {
                                  return "আপনার নাম সর্বনিম্ন ৭ ক্যারাক্টার হতে হবে!";
                                }
                              },
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "নাম লিখুন",
                                  prefixIcon: Icon(Icons.account_circle),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার মোবাইল নাম্বার লিখুন !";
                                } else if (value!.length < 10) {
                                  return "মোবাইল নাম্বার সর্বনিম্ন ৭ ক্যারাক্টার হতে হবে!";
                                }
                              },
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "মোবাইল নাম্বার",
                                  prefixIcon: Icon(Icons.numbers),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              // controller: _emailCtrl,
                              onChanged: (value) {
                                email = value;
                              },
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার ইমেইল আইডি দিন !";
                                } else if (!validEmail(value)) {
                                  return "আপনি ইনভেলিড ইমেইল আইডি দিয়েছেন !";
                                }
                              },
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "ইমেইল",
                                  prefixIcon: Icon(Icons.email),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                password = value;
                              },
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "আপনার পাসওয়ার্ড দিন !";
                                } else if (value!.length < 6) {
                                  return "পাসওয়ার্ড সর্বনিম্ন ৬ ক্যারাক্টার হতে হবে!";
                                }
                              },
                              obscureText: !isShowPassword,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "পাসওয়ার্ড",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      passwordVisibility();
                                    },
                                    icon: isShowPassword
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility),
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "অপনার কনর্ফাম-পাসওয়ার্ড দিন !";
                                } else if (value!.length < 6) {
                                  return "Password Must Be A 10 Character Or Above";
                                }
                              },
                              obscureText: !isShowPassword,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "কনর্ফাম-পাসওয়ার্ড",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      passwordVisibility();
                                    },
                                    icon: isShowPassword
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility),
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'সাইন আপ',
                                  style: TextStyle(
                                      color: Colors.white,
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
                                        _auth.createUserWithEmailAndPassword(
                                            email: email, password: password);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content:
                                                  Text('সাইনআপ সাকসেসফুলি')),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'লগিন করুন',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                  style: ButtonStyle(),
                                ),
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
