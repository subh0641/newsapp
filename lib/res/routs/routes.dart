import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:newsapp/controller/onboarding_controller.dart';
import 'package:newsapp/controller/splash_controller.dart';
import 'package:newsapp/res/routs/route_name.dart';
import 'package:newsapp/views/authenticationpage.dart';
import 'package:newsapp/views/onboarding.dart';
import 'package:newsapp/views/splash_screen.dart';

import '../../controller/authentication.dart';

class AppRoutes {
  static getRoutes() => [
        GetPage(
            name: RouteName.splash,
            page: () => SplashScreen(),
            binding: BindingsBuilder.put(
              () => SplashController(),
            )),
        GetPage(
            name: RouteName.onboarding,
            page: () => OnBoarding(),
            binding: BindingsBuilder.put(
              () => OnboardingController(),
            )),
        GetPage(
            name: RouteName.authentication,
            page: () => Authenticationpage(),
            binding: BindingsBuilder.put(
              () => AuthenticationController(),
            )),
      ];
}
