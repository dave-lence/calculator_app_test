import 'package:calculator_app_test/common/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpDone extends StatelessWidget {
  const SignUpDone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/background-complete.png',
                    width: MediaQuery.of(context).size.width,
                    height: 343,
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  child: Image.asset(
                    'assets/Factors.png',
                    width: 270,
                    height: 215,
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  child: Image.asset(
                    'assets/Character.png',
                    width: 270,
                    height: 215,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            const Text(
              'Congratulations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
                'Your email and account has been\n verified successfully.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
            const SizedBox(
              height: 50,
            ),
            CustomButton(text: 'Start solving equation', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
