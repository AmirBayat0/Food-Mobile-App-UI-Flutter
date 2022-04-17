import 'package:get/get.dart';
///
import '../controllers/drawer_controller.dart';
import '../controllers/splash_controller.dart';
import '../controllers/wallet_controller.dart';
import '../controllers/navigator_controllers.dart';
import '../controllers/switch_controller.dart';
import '../controllers/tabBar_controller.dart';
import '../controllers/food_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigatorController());
    Get.lazyPut(() => TabBarController());
    Get.lazyPut(() => SwitchController());
    Get.lazyPut(() => FoodController());
    Get.lazyPut(() => WalletController());
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => MainDrawerController());
    
  }
}
