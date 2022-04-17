import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//
import '../controllers/drawer_controller.dart';
import '../controllers/navigator_controllers.dart';
import '../model/drawer_model.dart';

final w = Get.width;
final h = Get.height;

const Color unSelectedColor = Color.fromARGB(255, 234, 234, 234);

Drawer mainDrawer(int index) {
  var controller = Get.find<MainDrawerController>();
  final navController = Get.find<NavigatorController>();
  controller.changeIndex(index);
  return Drawer(
    child: Column(
      children: [
        Container(
          width: w,
          height: h / 4,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/drawer.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/me.jpg"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("AmirHossein Bayat",
                    style: GoogleFonts.oxygen(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text("657 Star",
                        style: GoogleFonts.oxygen(
                          color: unSelectedColor,
                          fontSize: 16,
                        )),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        GetBuilder<MainDrawerController>(
            id: "current Drawer Itme Index",
            builder: (context) {
              return Container(
                  margin: const EdgeInsets.all(20),
                  width: w,
                  height: h / 1.75,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: drawerItem.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          controller.changeIndex(index);
                          switch (index) {
                            case 0:
                              navController.changeNavBarIndex(2);
                              break;
                            case 1:
                              navController.changeNavBarIndex(1);
                              break;
                            case 3:
                              navController.changeNavBarIndex(0);
                              break;

                            default:
                          }
                        },
                        child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            tileColor:
                                controller.currentDrawerItmeIndex == index
                                    ? const Color.fromARGB(255, 219, 205, 255)
                                    : Colors.white,
                            leading: Icon(
                              drawerItem[index].icon,
                              color: controller.currentDrawerItmeIndex == index
                                  ? Colors.purple
                                  : Colors.grey,
                            ),
                            title: Text(
                              drawerItem[index].title,
                              style: TextStyle(
                                color:
                                    controller.currentDrawerItmeIndex == index
                                        ? Colors.purple
                                        : Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      if (index == 6) {
                        return const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ));
            }),
      ],
    ),
  );
}
