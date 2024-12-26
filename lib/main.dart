import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 30,
          title: Text("Dubakoor app"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          leading: Icon(Icons.menu),
        ),
        body: Center(),
      ),
    );
  }
}
