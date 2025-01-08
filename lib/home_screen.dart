import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;

    return Scaffold(
        appBar: AppBar(
          title: Text('GetX tutorials'),
        ),
        body: Column(
          children: [
            Container(
              //height: MediaQuery.of(context).size.height * .85,
              //height: Get.height * .2,
              // height: heigh * .2,
              height: Get.height * .1,
              width: Get.width * .8,
              color: Colors.purple,
              child: Center(
                child: Text('Center'),
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height * .85,
              //height: Get.height * .2,
              // height: heigh * .2,
              height: Get.height * .2,
              width: Get.width * .8,
              color: Colors.red,
              child: Center(
                child: Text('Center'),
              ),
            ),
          ],
        ));
  }
}
