import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 150,
          ),
          Image.asset(
            'assets/Group (1).png',
            width: 160,
            height: 160,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Login Successful',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
                'You have successfully logged in to your QuickSolver account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
          ),
          SizedBox(
            height: size.height * 0.30,
          ),
          Image.asset(
            'assets/Component.png',
            width: 340,
            height: 16,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text('Wait while we personalize your experience for you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
          ),
        ]),
      ),
    );
  }
}
