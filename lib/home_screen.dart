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
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX tutorials'),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('KrishN', 'Learn GetX Tutorials',
            icon: Icon(Icons.add),
            onTap: (snap) {},
            mainButton: TextButton(onPressed: () {}, child: Text('Click')),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
