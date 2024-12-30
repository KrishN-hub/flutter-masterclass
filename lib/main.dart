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
              height: 380,
              width: double.infinity,
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //chicken banner
                  Container(
                    height: 380,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://thumbs.dreamstime.com/b/perfectly-grilled-whole-chicken-sizzling-over-open-flame-seasoned-fresh-rosemary-herbs-golden-brown-skin-335822485.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(105),
                      ),
                    ),
                  ),
                  // three chikens
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNEwI65PvBG8qjKP6jk3ksRO-8McMJgqwijA&s"),
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTLl4F63j9gYkNB5gNCXw3khVj5hjQMlGtm3cQG3bNvdMx9qY-MuiY4kx0ihN-7amkJrQ&usqp=CAU"),
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj408iyP2ntwzDYi_oPrSPCpnFGB2KpOhrOMk4oij7pKo6503rM6fWg5BwxNnFJOCgZgE&usqp=CAU"),
                    ],
                  )
                ],
              ),
            ),
            Text(
              "Juicy Rostaed chicken",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Juicy roasted chicken is the ultimate comfort dish, known for its crispy, golden-brown skin and tender, flavorful meat.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Rs.250",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Text(
                      "1 + 1",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "+ 5",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 45,
      child: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 42,
      ),
      //other details show
    );
  }
}
