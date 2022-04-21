import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//
import '../controllers/splash_controller.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SplashController>();
    return SafeArea(
      child: Scaffold(
        body: Center(child: SimpleBuilder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInUp(
                child: CupertinoSwitch(
                  activeColor: Colors.deepPurpleAccent,
                  value: controller.showIntro,
                  onChanged: (val) => controller.changeBool(val),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FadeInUp(
                
                delay: const Duration(milliseconds: 500),
                child: Text(
                    "Introduction Screen is : ${controller.showIntro == true ? 'Enable' : 'Disable'}",
                    style: GoogleFonts.oxygen(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    )),
              )
            ],
          );
        })),
      ),
    );
  }
}
