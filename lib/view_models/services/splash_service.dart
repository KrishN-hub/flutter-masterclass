import 'dart:async';

import 'package:get/get.dart';
import 'package:master_class/res/routes/routes_name.dart';
import 'package:master_class/view_models/controller/user_preference/user_preference_view_model.dart';

class SplashService {
  UserPreference userPreference = UserPreference();
  void isLogin() {
    userPreference.getUser().then((value) {
      print(value.token);
      print(value.isLogin);
      if (value.isLogin == false  || value.isLogin.toString() == 'null') {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.loginView));
      } else {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.homeView));
      }
    });
  }
}
