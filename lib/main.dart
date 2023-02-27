import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'SplashScreen.dart';
import 'login-signup/MyRegister.dart';
import 'login-signup/My_Login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
      home: AnimatedSplashScreen(splash: 'assets/realme.png', nextScreen: MyLogin(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3,
        backgroundColor: Colors.black,
      ),
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
      },
    );
  }
}