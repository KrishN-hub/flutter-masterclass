import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 30,
                    color: Colors.white,
                  )
                  Text('calendar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                  Text('March', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                  Text('March', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
