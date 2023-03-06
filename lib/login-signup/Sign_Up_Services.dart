// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_animated_splash_screen/login-signup/My_Login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

signUpUser(
  String userName,
  String userPhone,
  String userEmail,
  String userPassword,
  String userConfirmPass,
) async {
  User? userid = FirebaseAuth.instance.currentUser;
  try {
    await FirebaseFirestore.instance.collection("users").doc(userid!.uid).set({
      'userName': userName,
      'userPhone': userPhone,
      'userEmail': userEmail,
      'userPassword': userPassword,
      'userConfirmPass': userConfirmPass,
      'createdAt': DateTime.now(),
      'userId': userid.uid,
    }).then((value) => {
      FirebaseAuth.instance.signOut(),

      Get.to(() => const MyLogin()),
    });
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      Fluttertoast.showToast(msg: 'The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      Fluttertoast.showToast(msg: 'The account already exists for that email.');
    }
    } catch (e) {
    Fluttertoast.showToast(msg: 'Error is: $e');
  }
}
