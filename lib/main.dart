import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'SplashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.black)
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
      home: Column(
        children: [
          Container(
            height: 550,
            width: 500,

            child: AnimatedSplashScreen(splash: 'assets/realme.png', nextScreen: SplashScreen(),
              splashTransition: SplashTransition.fadeTransition,
              duration: 3,
              backgroundColor: Colors.black,
            ),
          ),
          CircularProgressIndicator(
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
