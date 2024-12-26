import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
          elevation: 10,
        ),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 30,
          title: Text("DubakoorApp"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: Center(
            child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  elevation: 30,
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
              onPressed: () {
                print("Button Clicked..!");
              },
              child: Text("Click Here..!"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  elevation: 30,
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
              onPressed: () {
                print("Button Clicked..!");
              },
              child: Text("Click Here..!"),
            ),
          ],
        )),
      ),
    );
  }
}
