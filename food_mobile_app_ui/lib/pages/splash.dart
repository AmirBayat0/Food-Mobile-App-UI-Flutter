import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//
import '../pages/landscape_mode.dart';
import '../controllers/splash_controller.dart';
import '../utils/constanst.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      Get.find<SplashController>();
      return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: w,
            height: h,
            child: Stack(children: [
              FadeInDown(
                delay: const Duration(milliseconds: 100),
                child: Container(
                  width: w,
                  height: h / 2,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(1000),
                          bottomLeft: Radius.circular(1000))),
                ),
              ),
              Positioned(
                top: 90,
                left: 60,
                child: FadeInDown(
                  delay: const Duration(milliseconds: 800),
                  child: SizedBox(
                    width: w / 1.5,
                    height: h / 10,
                    child: Center(
                      child: Text(
                        "Food In Two",
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 60,
                child: FadeInDown(
                  delay: const Duration(milliseconds: 1200),
                  child: SizedBox(
                    width: w / 1.5,
                    height: h / 10,
                    child: Center(
                      child: Text(
                        "Food Delivery App",
                        style: GoogleFonts.lato(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 75,
                child: FadeInDown(
                  delay: const Duration(milliseconds: 1600),
                  child: Spin(
                    delay: const Duration(milliseconds: 2000),
                    child: SizedBox(
                      width: w / 1.6,
                      height: h / 3.3,
                      child: Center(child: Image.asset('assets/images/1.png')),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 80,
                child: FadeInDown(
                  delay: const Duration(milliseconds: 2300),
                  child: SizedBox(
                    width: w / 1.6,
                    height: h / 19,
                    child: Center(
                      child: Text(
                        "Wait Moment Beautiful...",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 155,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 2600),
                  child: SizedBox(
                    width: w / 5,
                    height: h / 15,
                    child: Center(
                        child: SpinKitFoldingCube(
                      size: 35,
                      itemBuilder: (BuildContext context, int index) {
                        return const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                        );
                      },
                    )),
                  ),
                ),
              ),
            ]),
          ),
        ),
      );
    } else {
      return const LandScape();
    }
  }
}
