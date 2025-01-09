import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> fruitList = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
  ];

  List<String> tempFruitList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX tutorials'),
        ),
        body: ListView.builder(
            itemCount: fruitList.length,
            itemBuilder: (context, Index) {
              return Card(
                  child: ListTile(
                onTap: () {
                  if (tempFruitList.contains(fruitList[Index].toString())) {
                    tempFruitList.remove(fruitList[Index].toString());
                  } else {
                    tempFruitList.add(fruitList[Index].toString());
                  }

                  setState(() {});
                },
                title: Text(fruitList[Index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color: tempFruitList.contains(fruitList[Index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ));
            }));
  }
}
