import 'package:calculator_app_test/common/widget/custom_button.dart';
import 'package:calculator_app_test/common/widget/custom_text-field.dart';
import 'package:calculator_app_test/features/login/screen/login_success.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscureText = true;
  bool agreed = false;

  void onChanged(bool? value) {
    setState(() {
      agreed = value!;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                  textAlign: TextAlign.center,
                  'Kindly log in to your account to help us save your solutions for you.'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                hintText: 'Email Address',
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                obscureText: obscureText,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.green.shade700,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.4, color: Colors.green.shade900),
                            borderRadius: BorderRadius.circular(5)),
                        child: Checkbox(
                            side: BorderSide(
                                width: 0.5, color: Colors.green.shade900),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            activeColor: Colors.green.shade900,
                            checkColor: Colors.green.shade900,
                            value: agreed,
                            onChanged: onChanged),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Save login',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width * 0.93,
                child: CustomButton(text: 'Sign In now', onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginSuccess()));
                })),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/logos_google-gmail.png',
                      width: 25, height: 25),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200],
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/vector (1).png',
                        width: 25, height: 25),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/vector (2).png',
                      width: 25, height: 25),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            TextButton(
                onPressed: () {
                  
                },
                child: const Text('Continue as guest',
                    style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.underline))),
          ],
        ),
      ),
    );
  }
}
