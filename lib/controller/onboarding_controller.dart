import 'package:get/get.dart';

class OnboardingController extends GetxController {
  // OnboardingController(this.pageController);

  final _currentIndex = 0.obs;

  get currentIndex => _currentIndex.value;

  set currentIndex(value) => _currentIndex.value = value;

  changeIndex(int value) {
    currentIndex = value;
  }

// final  PageController pageController;
//
//   changePage(int value){
//     pageController?.animateToPage(value, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
//  }
}

