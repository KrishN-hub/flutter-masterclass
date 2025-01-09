import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/example_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX tutorials'),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              width: 200,
              height: 200,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (Value) {
                exampleTwoController.setOpacity(Value);
              }))
        ],
      ),
    );
  }
}
