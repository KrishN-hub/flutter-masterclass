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
            //color: Colors.green,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE-V0rxRcu77q4B6JHE0VddYu_uBnnVSWcPQ&s"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.5, 6.5),
                    blurRadius: 6.0,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
