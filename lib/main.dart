import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("First page"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Go to Next Page"),
            onPressed: () {
              print("go to next page");
              //Get.to(NextPage());
              Get.defaultDialog(
                  title: "Message",
                  //middleText: "Do You Want to GO Next Page",
                  content: Text(
                    "Do You Want to GO Next Page",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.pink,
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.to(NextPage());
                      },
                      child: Text("yes"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("No"),
                    )
                  ]);
            },
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
