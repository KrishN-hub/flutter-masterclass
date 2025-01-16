import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/res/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      body: Column(
        children: [
          RoundButton(
            title: 'Login',
            onpress: () {},
          ),
          RoundButton(
            title: 'SignUp',width: double.infinity,
            onpress: () {},
          ),
        ],
      ),
    );
  }
}
