import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_class/models/login/user_model.dart';
import 'package:master_class/repository/login_repository/login_repository.dart';
import 'package:master_class/res/routes/routes_name.dart';
import 'package:master_class/utils/utils.dart';
import 'package:master_class/view_models/controller/user_preference/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;

    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.SnackBar('Login', value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);
        userPreference.saveUser(UserModel.fromJson(value)).then((value) {
          Get.toNamed(RouteName.homeView);
        }).onError((error, StackTrace) {});

        Utils.SnackBar('Login', 'login successfully');
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.SnackBar('Error', error.toString());
    });
  }
}
