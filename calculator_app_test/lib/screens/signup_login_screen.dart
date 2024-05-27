import 'package:calculator_app_test/features/login/screen/sigin_in_screen.dart';
import 'package:calculator_app_test/features/sign_up/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpLoginScreen extends StatefulWidget {
  const SignUpLoginScreen({super.key});

  @override
  State<SignUpLoginScreen> createState() => _SignUpLoginScreenState();
}

class _SignUpLoginScreenState extends State<SignUpLoginScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.green.shade700,
    ));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.green.shade900,
            indicatorWeight: 4,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelColor: Colors.green.shade900,
            unselectedLabelColor: Colors.grey.shade600,
            labelStyle: const TextStyle(fontSize: 14),
            tabs: [
              Tab(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    tabController.index == 0
                        ? 'assets/in_light (1).png'
                        : 'assets/Group 8655.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text('Sign up'),
                ],
              )),
              Tab(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    tabController.index == 1
                        ? 'assets/Sign_in_circle_light_2.png'
                        : 'assets/Sign_in_circle_light.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text('Sign in'),
                ],
              )),
            ]),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(controller: tabController, children: const [
        SignUpScreen(),
        LoginScreen(),
      ]),
    );
  }
}
