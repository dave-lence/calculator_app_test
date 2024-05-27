import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calculator_app_test/screens/signup_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, // set the status bar color if needed
    ));

    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/image 17.png',
              fit: BoxFit.fill,
            ),
            AnimatedSplashScreen(

              animationDuration: const Duration(seconds: 5),
              splash: 
                  SizedBox(
                    height: 76,
                    width: size.width,
                    child: Image.asset(
                      'assets/Artboard 1@2xxt.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                 
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 100, left: 30, right: 30),
                  //   child: Text(
                  //       textAlign: TextAlign.center,
                  //       'Launching your one stop solution to all science and maths problems'),
                  // ),
               
              nextScreen: const SignUpLoginScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
