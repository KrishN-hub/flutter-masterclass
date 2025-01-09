import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController controller = Get.put(FavouriteController());
  /*List<String> fruitList = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
  ];

  List<String> tempFruitList = [];*/
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
            itemCount: controller.fruitList.length,
            itemBuilder: (context, Index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        if (controller.tempFruitList
                            .contains(controller.fruitList[Index].toString())) {
                          controller.removeFromFavourite(
                              controller.fruitList[Index].toString());
                        } else {
                          controller.addToFavourite(
                              controller.fruitList[Index].toString());
                        }
                      },
                      title: Text(controller.fruitList[Index].toString()),
                      trailing: Obx(
                        () => Icon(
                          Icons.favorite,
                          color: controller.tempFruitList.contains(
                                  controller.fruitList[Index].toString())
                              ? Colors.red
                              : Colors.white,
                        ),
                      )));
            }));
  }
}
