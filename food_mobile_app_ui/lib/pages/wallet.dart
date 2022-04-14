import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_mobile_app_ui/controllers/navigator_controllers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
//
import '../controllers/wallet_controller.dart';
import '../utils/constanst.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: MainItem(),
        ),
      ),
    );
  }
}

class MainItem extends StatelessWidget {
  const MainItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _walletController = Get.find<WalletController>();
    return Column(
      children: [
        GetBuilder<WalletController>(builder: (context) {
          return _walletController.walletFood.isEmpty
              ? Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w / 1.01,
                      height: h / 4,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 300),
                        child: Lottie.network(
                            "https://assets8.lottiefiles.com/packages/lf20_ZZ7nur.json",
                            animate: false),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      child: Text(
                        "No Data To Show!",
                        style: GoogleFonts.lato(
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ))
              : SizedBox(
                  width: w,
                  height: h / 1.3,
                  child: Column(
                    children: [
                      SizedBox(
                          width: w,
                          height: h / 15,
                          // color: Colors.yellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: w / 3,
                                height: h / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.black),
                                child: Center(
                                    child: Text(
                                  "Total Item : ${_walletController.walletFood.length}",
                                  style: GoogleFonts.lato(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              ),
                              Container(
                                width: w / 1.8,
                                height: h / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.red),
                                child: Center(
                                    child: Text(
                                  "Total Price : \$${_walletController.totalAmount().toStringAsFixed(2)}",
                                  style: GoogleFonts.lato(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              )
                            ],
                          )),
                      SizedBox(
                        width: w,
                        height: h / 1.65,
                        child: ListView.builder(
                          itemCount: _walletController.walletFood.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(5.0),
                              width: w,
                              height: h / 4.5,
                              child: Stack(children: [
                                Positioned(
                                  bottom: 10,
                                  right: 0,
                                  child: FadeInLeft(
                                    delay: Duration(
                                        milliseconds: (index / 0.5 * 100).toInt()),
                                    child: Container(
                                      width: w / 1.3,
                                      height: h / 5.5,
                                      decoration: BoxDecoration(
                                          color: unSelectedColor,
                                          borderRadius: BorderRadius.circular(100),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 221, 219, 219),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: Offset(-7, 11))
                                          ]),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 3,
                                  child: FadeInLeft(
                                    delay: Duration(
                                        milliseconds: (index / 0.5 * 200).toInt()),
                                    child: Spin(
                                      delay: Duration(
                                          milliseconds:
                                              (index / 0.5 * 250).toInt()),
                                      child: SizedBox(
                                        width: w / 2.5,
                                        height: h / 5,
                                        child: Hero(
                                          tag: _walletController
                                              .walletFood[index].id,
                                          child: Image.asset(
                                            _walletController.walletFood[index].img,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 170,
                                  top: 40,
                                  child: FadeInLeft(
                                    delay: Duration(
                                        milliseconds: (index / 0.5 * 300).toInt()),
                                    child: Text(
                                      _walletController.walletFood[index].title,
                                      style: GoogleFonts.oxygen(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 171,
                                  top: 68,
                                  child: FadeInLeft(
                                    delay: Duration(
                                        milliseconds: (index / 0.5 * 400).toInt()),
                                    child: Text(
                                      _walletController.walletFood[index].subtitle,
                                      style: GoogleFonts.oxygen(
                                          color: const Color.fromARGB(
                                              255, 135, 134, 134),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 171,
                                  top: 95,
                                  child: FadeInLeft(
                                    delay: Duration(
                                        milliseconds: (index / 0.5 * 500).toInt()),
                                    child: Text(
                                      "\$${_walletController.walletFood[index].price.toStringAsFixed(2)}",
                                      style: GoogleFonts.oxygen(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 26,
                                    right: 20,
                                    child: FadeInRight(
                                      delay: Duration(
                                          milliseconds:
                                              (index / 0.5 * 700).toInt()),
                                      child: Spin(
                                        delay: Duration(
                                            milliseconds:
                                                (index / 0.5 * 800).toInt()),
                                        child: IconButton(
                                            onPressed: () {
                                              Get.defaultDialog(
                                                  barrierDismissible: false,
                                                  title: "Warning!",
                                                  content: const Text(
                                                    "Do you really wanna remove this Item from this list?",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  confirmTextColor: Colors.white,
                                                  onCancel: () {},
                                                  onConfirm: () {
                                                    _walletController
                                                        .removeSingleItem(index);
                                                    Get.back();
                                                  });
                                            },
                                            icon: const Icon(
                                              LineIcons.times,
                                              color: Colors.red,
                                            )),
                                      ),
                                    ))
                              ]),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {},
                          minWidth: w,
                          height: h / 14,
                          child: Text(
                            "Order Now",
                            style: GoogleFonts.lato(fontSize: 18),
                          ),
                          color: unSelectedColor,
                        ),
                      ),
                    ],
                  ),
                );
        }),
      ],
    );
  }
}

/// MyAppBar Widget Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    var _walletController = Get.find<WalletController>();
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: FadeInDown(
        delay: const Duration(milliseconds: 200),
        child: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {},
        ),
      ),
      actions: [
        GetBuilder<WalletController>(builder: (context) {
          return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: _walletController.walletFood.isNotEmpty
                  ? FadeInRight(
                      delay: const Duration(milliseconds: 300),
                      child: IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                              barrierDismissible: false,
                              title: "Warning!",
                              content: const Text(
                                "Do you really wanna remove all items from this list?",
                                textAlign: TextAlign.center,
                              ),
                              confirmTextColor: Colors.white,
                              onCancel: () {},
                              onConfirm: () {
                                _walletController.removeAllItems();
                                Get.back();
                              });
                        },
                        icon: const Icon(
                          LineIcons.trash,
                          color: Colors.red,
                          size: 35,
                        ),
                      ),
                    )
                  : FadeInRight(
                      delay: const Duration(milliseconds: 400),
                      child: IconButton(
                          onPressed: () {
                            Get.find<NavigatorController>().currentIndex.value =
                                0;
                          },
                          icon: const Icon(
                            LineIcons.plusCircle,
                            color: Colors.black,
                            size: 30,
                          )),
                    ));
        }),
      ],
    );
  }
}
