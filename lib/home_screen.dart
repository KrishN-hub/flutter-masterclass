import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/example_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleController exampleController = Get.put(ExampleController());
  bool notification = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX tutorials'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notofications'),
              /* Obx(() => Switch(
                  value: exampleController.notification.value,
                  onChanged: (value) {
                    notification = value;
                    exampleController.setNotification(value);
                  }))*/
              Obx(() {
                return Switch(
                    value: exampleController.notification.value,
                    onChanged: (value) {
                      notification = value;
                      exampleController.setNotification(value);
                    });
              })
            ],
          )
        ],
      ),
    );
  }
}
