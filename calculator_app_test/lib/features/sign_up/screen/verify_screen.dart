import 'package:calculator_app_test/common/widget/custom_button.dart';
import 'package:calculator_app_test/features/sign_up/screen/sign_up_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 480,
          width: size.width * 0.80,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Verify Email Address',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                    'We  have sent a 4 digit code to your email, enter it below to continue. '),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                  'padosky3@gmail.com'),
              const SizedBox(
                height: 20,
              ),
              VerificationCode(
                textStyle: TextStyle(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w800,
                    fontSize: 22),
                keyboardType: TextInputType.number,
                fullBorder: true,
                underlineColor: Colors.green.shade700,
                underlineWidth: 2,
                length: 4,
                cursorColor: Colors.green.shade700,
                margin: const EdgeInsets.all(12),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '(04:30)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  SizedBox(
                      width: size.width * 0.65,
                      child: CustomButton(
                          text: 'Verify',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpDone(),
                                ));
                          })),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: size.width * 0.65,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: const Color(0xFFE6EDE7),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodeBox extends StatelessWidget {
  const VerificationCodeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: const TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
