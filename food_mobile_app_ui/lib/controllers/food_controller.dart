import 'package:get/get.dart';
//
import '../model/salads_model.dart';

class FoodController extends GetxController {
  List<SaladModel> salads = [
    SaladModel(
      id: "1",
      img: "assets/images/1.png",
      title: "Greek Salad",
      subtitle: "Love and Lemons",
      price: 32.00,
      deliveryTime: "15 min",
      description:
          "Greek salad or horiatiki salad is a popular salad in Greek cuisine generally made with pieces of tomatoes, cucumbers, onion, feta cheese, and olives and dressed with salt, pepper, Greek oregano, and olive oil. Common additions include green bell pepper slices or caper berries.",
      quantity: 1,
    ),
    SaladModel(
      id: "2",
      img: "assets/images/2.png",
      title: "Chopped Salad",
      subtitle: "A Couple Cooks",
      price: 24.00,
      deliveryTime: "20 min",
      description:
          "Chopping intensifies the pleasure of a salad.” The ever-on-the-go Gordinier also noted that chopping makes salad a faster, more portable nosh. “No unwieldy fronds of greens flicking vinegar into your face. A knife converts salad into subway food.",
      quantity: 1,
    ),
    SaladModel(
      id: "3",
      img: "assets/images/3.png",
      title: "Avocado Salad",
      subtitle: "Ahead of Thyme",
      price: 24.00,
      deliveryTime: "10 min",
      description:
          "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh herb dressing. A healthy side that s perfect for a summer lunch or dinner!",
      quantity: 1,
    ),
    SaladModel(
      id: "4",
      img: "assets/images/4.png",
      title: "Healthy Quinoa",
      subtitle: "Foodie Crush",
      price: 29.00,
      deliveryTime: "7 min",
      description:
          "Bright flavor and bold bites are what make this healthy quinoa salad with chickpeas, black beans, mango and avocado in a limey dressing an easy side dish or simple vegetarian meal.",
      quantity: 1,
    ),
  ];

  // For add 1 item from quantityes of Food
  void addQ(int index) {
    if (salads[index].quantity < 9 && salads[index].quantity >= 0) {
      salads[index].quantity++;
    } else {
      Get.snackbar("Notice", "You can't add more than 9 item!");
    }
    update(["quantity"]);
  }

  // For remove 1 item from quantityes of Food
  void removeQ(int index) {
    if (salads[index].quantity > 1 && salads[index].quantity <= 9) {
      salads[index].quantity--;
    } else {
      Get.snackbar("Notice", "You can't order 0 item!");
    }
    update(["quantity"]);
  }
}
