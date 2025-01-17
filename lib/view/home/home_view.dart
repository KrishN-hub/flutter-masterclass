import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/res/routes/routes_name.dart';
import 'package:master_class/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              userPreference.removeUser().then((value) {
                Get.toNamed(RouteName.loginView);
              });
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
