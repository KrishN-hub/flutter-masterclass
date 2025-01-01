import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //google photos
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "G",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                        ),
                        children: [
                          TextSpan(
                              text: "o",
                              style: TextStyle(
                                color: Colors.red,
                              )),
                          TextSpan(
                              text: "o",
                              style: TextStyle(
                                color: Colors.yellow,
                              )),
                          TextSpan(
                              text: "g",
                              style: TextStyle(
                                color: Colors.blue,
                              )),
                          TextSpan(
                              text: "l",
                              style: TextStyle(
                                color: Colors.green,
                              )),
                          TextSpan(
                              text: "e",
                              style: TextStyle(
                                color: Colors.red,
                              )),
                          TextSpan(
                              text: "Photos",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        ]),
                  ),
                  SizedBox(width: 45),
                  //profile picture
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6V2A5AYbTf6SxKO8u2NMPrtwh03AYzCrIQ&s"),
                  )
                ],
              ),
            ),
            //left to right photo
            Container(
              height: 200,
              width: 330,
              color: Colors.red,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "1 Year ago",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/09/01/01/26/family-1635049_640.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
