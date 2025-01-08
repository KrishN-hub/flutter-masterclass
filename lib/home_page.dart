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
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX dialog Alert'),
              subtitle: Text('Getx Alert With GetX dilaog box'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are You Sure Want to Delete This Chat?',
                  confirm: TextButton(
                      onPressed: () {
                        //Navigator.pop(context);
                        Get.back();
                      },
                      child: Text('Ok')),
                  cancel: TextButton(onPressed: () {}, child: Text('Cancel')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GetX Bottom sheet'),
              subtitle: Text('GetX Alert with GetX'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Theme'),
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
