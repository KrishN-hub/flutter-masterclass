import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/screen_two.dart';

class ScreenOne extends StatefulWidget {
  //final String name;
  //const ScreenOne({Key? key, this.name = ''}) : super(key: key);

  var name;
  ScreenOne({Key? key, this.name}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One' + Get.arguments[2]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.to(ScreenTwo());
                },
                child: Text('Go to Screen')),
          )
        ],
      ),
    );
  }
}
