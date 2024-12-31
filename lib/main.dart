import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxzpz8rqEs_fBD5oavoMBfLgo9kYwqrQAwVcin1Is1zqDcNQtA"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4, 5),
                    blurRadius: 6,
                  )
                ]),
          ),
          //stroy name and full story
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  "A small story about lantern Girl",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text("In a quiet village nestled between misty mountains, there was a festival celebrated every year on the night of the first full moon. It was called The Festival of Lanterns, where the sky would be filled with glowing lights carrying the dreams and wishes of the villagers.\n Among them was Mei, a shy but curious girl who had a secret—she could speak to lanterns. She discovered this gift when she was little, after whispering her wish into a lantern and hearing it whisper back. Every year since, she would ask the lanterns about the wishes of others, piecing together their joys and struggles. But Mei had never sent up a lantern of her own. She feared her dreams were too small, too unimportant",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
