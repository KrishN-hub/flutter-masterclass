import 'package:flutter/material.dart';
import 'package:master_class/res/getx_locatization/languages.dart';
import 'package:master_class/res/routes/routes.dart';
import 'package:get/get.dart';
import 'package:master_class/view/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Demo',
      translations: Languages(),
      locale: Locale('es','Es'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
     
      getPages: AppRoutes.appRoutes(),
      
    );
  }
}
