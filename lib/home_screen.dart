import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());
  int counter = 0;

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
        body: Center(child: Obx(() {
          print('rebuild');
          return Text(
            controller.counter.toString(),
            style: TextStyle(
              fontSize: 60,
            ),
          );
        })),
        floatingActionButton: FloatingActionButton(onPressed: () {
          controller.incrementCounter();
        }));
  }
}
