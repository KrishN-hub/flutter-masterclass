import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              //logo
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Royal_Enfield_logo_new.svg/1920px-Royal_Enfield_logo_new.svg.png"),
              SizedBox(height: 10),

              //Bike image
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgtcRmci4OH3SblUuwmeHGK2Kd_v0vAtVbwQ&s"),

              //bike name
              Text(
                "Classic 600",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              //bike specification
              Text(
                "Specification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrIohNwUHEmNd7el1_aWVv8ORzZjxxpx1yTg&s",
                      "373 CC"),
                  buildContainer(
                      "https://static.thenounproject.com/png/81330-200.png",
                      "45 ps"),
                  buildContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXSIM4w-OV372wlL7_MBqkTPQzviXjegmmkA&s",
                      "39 Km"),
                  buildContainer(
                      "https://cdn-icons-png.flaticon.com/512/3003/3003710.png",
                      "Disk"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.bikedekho.com/processedimages/royal-enfield/classic350/source/classic35066d56de6e0911.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(img, value) {
    return Container(
      height: 80,
      width: 75,
      child: Column(
        children: [
          Image.network(img, height: 50),
          Text(
            value,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
