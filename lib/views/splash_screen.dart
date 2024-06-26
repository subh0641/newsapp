import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/res/consts/assets.dart';
import 'package:newsapp/res/consts/consts.dart';

import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Spacer(),
        Image.asset(
          AppAssets.logo,
          width: 140,
        ),
        Spacer(),
        Text(
          AppStrings.powerdBy,
          style: appStyles.regular(size: 12),
        ),
        SizedBox(
          height: 20,
        )
      ],
    )));
  }
}
