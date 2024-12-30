import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Student Details",
        ),
      ),
      body: Column(
        children: [
          buildExpansionTileCard(),
          buildExpansionTileCard(),
          buildExpansionTileCard(),
        ],
      ),
    );
  }

  ExpansionTileCard buildExpansionTileCard() {
    return ExpansionTileCard(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPhWWso_x-Vx0ME3EBhGj8qKulNRUPpcppqg&s"),
      ),
      title: Text("Mithuna"),
      subtitle: Text("16798"),
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.bloodtype,
                color: Colors.red,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text("B+ve",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.red,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text("+94 772413863",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.home,
                color: Colors.red,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Vinayaha Muthaliyaar Road,\n Pointpedro.",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        ButtonBar(
          children: [
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.schedule),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Exam details"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.book),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Attendance details"),
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(Icons.money),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Fee details"),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
