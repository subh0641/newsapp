import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controller/onboarding_controller.dart';
import 'package:newsapp/res/consts/assets.dart';
import 'package:newsapp/res/consts/consts.dart';
import 'package:newsapp/res/routs/route_name.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/splash_controller.dart';
import '../res/consts/colors.dart';

class OnBoarding extends GetView<OnboardingController> {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      "assets/images/images.png",
      "assets/images/images1.png",
      "assets/images/images2.png"
    ];

    var titles=[AppStrings.title0,AppStrings.title1,AppStrings.title2];
    var desc=[AppStrings.desc0,AppStrings.desc1,AppStrings.desc2];

    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        onPageChanged: (value) => controller.changeIndex(value),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "${image[index]}",
                    width: 150,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(titles[index],
                            style: appStyles.semiBold(size: 16)),
                        6.heightBox,
                        VxBox()
                            .size(100, 5)
                            .color(AppColors.primaryButton)
                            .rounded
                            .make(),
                        30.heightBox,
                        Text(desc[index],
                            style: appStyles.regular(
                                color: AppColors.secondaryText)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {},
              child: Text(
                AppStrings.skip,
                style: appStyles.semiBold(color: AppColors.secondaryText),
              ),
            ),
            Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  3,
                  (index) => VxBox()
                      .size(index == controller.currentIndex ? 20 : 5, 5)
                      .rounded
                      .color(index == controller.currentIndex
                          ? AppColors.primaryButton
                          : AppColors.sliderDot)
                      .margin(EdgeInsets.symmetric(horizontal: 4))
                      .make(),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
Get.offNamed(RouteName.authentication);
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.secondaryButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
