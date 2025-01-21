import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/data/response/status.dart';
import 'package:master_class/res/components/general_exception.dart';
import 'package:master_class/res/components/internet_exceptions_widget.dart';
import 'package:master_class/res/routes/routes_name.dart';
import 'package:master_class/view_models/controller/home/home_view_model.dart';
import 'package:master_class/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        body: Obx(() {
          switch (homeController.rxRquestStatus.value) {
            case Status.LOADING:
              return const Center(child: CircularProgressIndicator());
            case Status.ERROR:
              if (homeController.error.value == 'no Internet') {
                return InternetExceptionsWidget(
                  onPress: () {
                    homeController.RefreshApi();
                  },
                );
              } else {
                return GeneralExceptionWidget(onPress: () {
                  homeController.RefreshApi();
                });
              }

            case Status.COMPLETED:
              return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(homeController.userList
                            .value.data![index].avatar.toString as String),
                      ),
                      title: Text(homeController.userList.value.data![index]
                          .firstName.toString as String),
                      subtitle: Text(homeController.userList.value.data![index]
                          .email.toString as String),
                    ),
                  );
                },
              );
          }
        }));
  }
}
