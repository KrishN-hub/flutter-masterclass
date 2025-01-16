import 'package:flutter/material.dart';
import 'package:master_class/res/assets/image_assets.dart';
import 'package:master_class/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image:AssetImage(ImageAssets.splashScreen),  ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter('krishn');
        },
      ),
    );
  }
}
