import 'package:get/get.dart';
import 'package:master_class/res/routes/routes_name.dart';
import 'package:master_class/view/login/login_view.dart';
import 'package:master_class/view/splash_screen.dart';


class AppRoutes {

  static appRoutes () => [
  GetPage(
    name: RouteName.splashScreen,
    page: () => SplashScreen(),
    transitionDuration: Duration(milliseconds: 250),
    transition: Transition.leftToRightWithFade,

  ),
   GetPage(
    name: RouteName.loginView,
    page: () => LoginView(),
    transitionDuration: Duration(milliseconds: 250),
    transition: Transition.leftToRightWithFade,

  ),
  ];
}