import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/image_picker_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  List<String> tempFruitList = [];
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
        body: (Column(
          children: [
            Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage: controller.imagePath.isNotEmpty
                            ? FileImage(File(controller.imagePath.toString()))
                            : null),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.getImage();
                      },
                      child: Text('Picker Image'))
                ],
              );
            })
          ],
        )));
  }
}
