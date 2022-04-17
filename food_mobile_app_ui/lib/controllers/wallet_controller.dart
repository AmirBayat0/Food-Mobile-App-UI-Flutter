import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../model/salads_model.dart';

class WalletController extends GetxController {
  List<SaladModel> walletFood = [];

  // Method for adding item into walletFood List
  void add({
    required id,
    required img,
    required title,
    required subtitle,
    required price,
  }) {
    var contain = walletFood.where((element) => element.id == id);
    if (contain.isEmpty) {
      walletFood.add(SaladModel(
          id: id,
          img: img,
          title: title,
          subtitle: subtitle,
          deliveryTime: "",
          price: price,
          description: "",
          quantity: 0));
      Get.snackbar("Notice!", "Added To Your Wallet",
          snackPosition: SnackPosition.TOP,
          duration: const Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
      update();
    } else {
      Get.snackbar("Warning!", "You have Added this Item before",
          snackPosition: SnackPosition.TOP,
          duration: const Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
    }
  }

  // Method for removing all items from the walletFood List
  void removeAllItems() {
    walletFood = [];
    update();
  }

  // Method for removing single item from walletFood List
  void removeSingleItem(int index) {
    walletFood.removeAt(index);
    update();
  }

  // Method For Calculating Total Price of foods
  double totalAmount() {
    var sumPrice = 0.0;
    for (SaladModel walletFood in walletFood) {
      sumPrice = sumPrice + walletFood.price; 
    }
    return sumPrice;
    
  }
}
