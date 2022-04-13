import 'package:get/get.dart';

class SwitchController extends GetxController {
  var currentSaladIndex = 0;

  void changeIndex(int index) {
    currentSaladIndex = index;
  }
}
