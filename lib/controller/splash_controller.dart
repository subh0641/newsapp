import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../res/routs/route_name.dart';

class SplashController extends GetxController {
  SplashController();

  @override
  void onInit() {
    // TODO: implement onInit
    navigateScreen();
    super.onInit();
  }

navigateScreen(){
  Future.delayed(Duration(seconds: 4),() {
    Get.toNamed(RouteName.onboarding);
  },);
}
}