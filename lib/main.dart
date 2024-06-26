import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Demo/demo_payment.dart';
import 'package:newsapp/res/consts/colors.dart';
import 'package:newsapp/res/consts/consts.dart';
import 'package:newsapp/res/routs/routes.dart';

import 'Demo/youtube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return
      // MaterialApp(home: DemoPayment(),);
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appname,
      theme: ThemeData(
          fontFamily: AppFonts.regular,
          scaffoldBackgroundColor: AppColors.background,
          iconTheme: IconThemeData(color: AppColors.icon)),
      getPages: AppRoutes.getRoutes(),
    );
  }
}
