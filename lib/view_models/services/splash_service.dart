import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:master_class/res/routes/routes_name.dart';

class SplashService {
  void isLogin() {
    Timer(const Duration(seconds: 3), () => Get.toNamed(RouteName.loginView));
  }
}
