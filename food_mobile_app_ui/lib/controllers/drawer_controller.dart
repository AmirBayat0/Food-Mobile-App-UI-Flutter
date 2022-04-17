import 'package:get/state_manager.dart';

class MainDrawerController extends GetxController {
  int currentDrawerItmeIndex = 0;

  void changeIndex(int index){
    currentDrawerItmeIndex = index;
    update(["current Drawer Itme Index"]);
  }
}




