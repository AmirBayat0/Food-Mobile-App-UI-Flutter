import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
//
import '../controllers/navigator_controllers.dart';
import '../controllers/food_controller.dart';
import '../controllers/wallet_controller.dart';
import '../controllers/switch_controller.dart';
import '../pages/details.dart';
import '../controllers/tabBar_controller.dart';
import '../utils/constanst.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        drawer: mainDrawer(3),
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const TopTextWidget(),
              TabBar(),
              const MiddleSaladsPageView(),
              const BottomSaladGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

/// Bottom Salad GridView Widget Components
class BottomSaladGridView extends StatelessWidget {
  const BottomSaladGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.find<SwitchController>();
    var _foodController = Get.find<FoodController>();
    return SizedBox(
      width: w,
      height: h / 2.9,
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: _foodController.salads.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _controller.currentSaladIndex = index;
                Get.to(() => const DetailsPage());
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1500),
                        child: Container(
                          width: w / 2.4,
                          height: h / 4,
                          decoration: BoxDecoration(
                              color: unSelectedColor,
                              borderRadius: BorderRadius.circular(60)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1600),
                        child: Spin(
                          delay: const Duration(milliseconds: 1650),
                          child: SizedBox(
                            width: w / 2.8,
                            height: h / 5.5,
                            child: Center(
                              child: Image.asset(
                                _foodController.salads[index].img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 130,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1700),
                        child: SizedBox(
                          width: w / 2.7,
                          height: h / 30,
                          child: Center(
                            child: Text(
                              _foodController.salads[index].title,
                              style: GoogleFonts.oxygen(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 155,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1800),
                        child: Text(
                          _foodController.salads[index].subtitle,
                          style: GoogleFonts.oxygen(
                              color: const Color.fromARGB(255, 135, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 185,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1900),
                        child: Text(
                          "\$${_foodController.salads[index].price.toStringAsFixed(2)}",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 7,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1950),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                              onPressed: () {
                                Get.find<WalletController>().add(
                                  id: _foodController.salads[index].id,
                                  img: _foodController.salads[index].img,
                                  title: _foodController.salads[index].title,
                                  subtitle:
                                      _foodController.salads[index].subtitle,
                                  price: _foodController.salads[index].price,
                                );
                              },
                              icon: const Icon(
                                Icons.add,
                                color: unSelectedColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

/// Middle Salads PageView Widget Components
class MiddleSaladsPageView extends StatelessWidget {
  const MiddleSaladsPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.find<SwitchController>();
    var _foodController = Get.find<FoodController>();
    return SizedBox(
        width: w,
        height: h / 4.5,
        child: PageView.builder(
            itemCount: _foodController.salads.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _controller.currentSaladIndex = index;
                  Get.to(() => const DetailsPage());
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: w / 1.1,
                  child: Stack(children: [
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: FadeInLeft(
                        delay: const Duration(milliseconds: 900),
                        child: Container(
                          width: w / 1.3,
                          height: h / 5.5,
                          decoration: BoxDecoration(
                              color: unSelectedColor,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      child: FadeInLeft(
                        delay: const Duration(milliseconds: 1000),
                        child: Spin(
                          delay: const Duration(milliseconds: 1100),
                          child: SizedBox(
                            width: w / 2.5,
                            height: h / 5,
                            child: Hero(
                              tag: _foodController.salads[index].id,
                              child: Image.asset(
                                _foodController.salads[index].img,
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
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1200),
                        child: Text(
                          _foodController.salads[index].title,
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
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1300),
                        child: Text(
                          _foodController.salads[index].subtitle,
                          style: GoogleFonts.oxygen(
                              color: const Color.fromARGB(255, 135, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 171,
                      top: 95,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1400),
                        child: Text(
                          "\$${_foodController.salads[index].price.toStringAsFixed(2)}",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 10,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1450),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                              onPressed: () {
                                Get.find<WalletController>().add(
                                  id: _foodController.salads[index].id,
                                  img: _foodController.salads[index].img,
                                  title: _foodController.salads[index].title,
                                  subtitle:
                                      _foodController.salads[index].subtitle,
                                  price: _foodController.salads[index].price,
                                );
                              },
                              icon: const Icon(
                                Icons.add,
                                color: unSelectedColor,
                              )),
                        ),
                      ),
                    )
                  ]),
                ),
              );
            }));
  }
}

/// TabBar Widget Components
class TabBar extends StatelessWidget {
  TabBar({
    Key? key,
  }) : super(key: key);

  final List<String> tabNames = [
    "Salads",
    "Soups",
    "Grilled",
    "Fish",
  ];

  @override
  Widget build(BuildContext context) {
    var _controller = Get.find<TabBarController>();
    return FadeInDown(
      delay: const Duration(milliseconds: 800),
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 5),
        width: w,
        height: h / 13,
        child: Row(
          children: [
            SizedBox(
              width: w / 1.25,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Obx(() {
                      return GestureDetector(
                        onTap: () {
                          _controller.currentIndex.value = index;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: w / 4,
                          height: double.infinity,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: _controller.currentIndex.value == index
                                ? Colors.black
                                : unSelectedColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text(
                            tabNames[index],
                            style: GoogleFonts.oxygen(
                                color: _controller.currentIndex.value == index
                                    ? const Color.fromARGB(255, 234, 234, 234)
                                    : Colors.black,
                                fontSize: 16),
                          )),
                        ),
                      );
                    });
                  }),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -15,
                child: IconButton(
                  icon: const Icon(
                    LineIcons.horizontalSliders,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Top Text Widget Components
class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h / 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 400),
            child: Text(
              "Delicious Salads",
              style: GoogleFonts.oxygen(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          FadeInDown(
            delay: const Duration(milliseconds: 600),
            child: Text(
              " We made fresh and Healthy food",
              style: GoogleFonts.oxygen(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// MyAppBar Widget Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 100),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 10, 2),
            child: GestureDetector(
              onTap: () {
                Get.find<NavigatorController>().changeNavBarIndex(2);
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
