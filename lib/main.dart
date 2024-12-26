import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            child: Icon(
              Icons.book,
              size: 150,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
