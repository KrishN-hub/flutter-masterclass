import 'package:get/get.dart';
import 'package:master_class/home/home_page.dart';
import 'package:master_class/views/about/about_page.dart';

appRoutes() => [
      GetPage(
          name: '/home', page: () => HomePage(), transition: Transition.zoom),
      GetPage(
          name: '/about', page: () => AboutPage(), transition: Transition.zoom),
    ];
