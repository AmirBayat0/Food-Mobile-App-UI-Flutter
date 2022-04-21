import 'package:get/state_manager.dart';

class DiscountController extends GetxController {
  String calDiscount(dynamic price) {
    if (price == 0.00) {
      return "0%";
    } else if (price < 50.00) {
      return "20%";
    } else {
      return "40%";
    }
  }
}
