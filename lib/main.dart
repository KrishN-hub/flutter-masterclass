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
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 155,
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 150,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-Xniq_E48HnL9_phKXUbdVLGL6tI5dfQ0Kw&s"),
            ),
          ),
        ),
      ),
    );
  }
}
