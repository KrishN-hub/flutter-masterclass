import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:master_class/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    // Get.to(ScreenOne(name: 'Pirunthavan'));
                    Get.toNamed('/screenOne',
                        arguments: ['Pirunthavan', 'my name this', '3rd']);
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => ScreenOne() ));
                  },
                  child: Text('Go To Next Screen')))
        ],
      ),
    );
  }
}
