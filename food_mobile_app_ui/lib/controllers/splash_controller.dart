import 'package:get/get.dart';
//
import 'package:food_mobile_app_ui/navigator.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 10),
      () {
        Get.offAll(() => const MainNavigator(),
            transition: Transition.cupertino);
      },
    );
    super.onInit();
  }
}
