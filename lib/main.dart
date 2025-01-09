import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(), // Define a dark theme
      themeMode: ThemeMode.light, // Default theme mode
      home: const HomeScreen(),
    );
  }
}
