import 'package:calculator_app_test/common/widget/custom_button.dart';
import 'package:calculator_app_test/common/widget/custom_text-field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

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
                  'Kindly create an account to help us save your solutions for you.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                      width: 170,
                      child: CustomTextField(
                        hintText: 'First Name',
                        controller: firstNameController,
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                      width: 170,
                      child: CustomTextField(
                        hintText: 'Last Name',
                        controller: lastNameController,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(
                hintText: 'Phone Number',
                controller: phoneController,
              ),
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'By Clicking ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '“Sign up” ',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'You Agree to our ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Terms of Use,\n Privacy Policy',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' and the',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Cookie Policy.',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width * 0.93,
                child: CustomButton(text: 'Sign Up now', onPressed: () {})),
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
            
          ],
        ),
      ),
    );
  }
}

