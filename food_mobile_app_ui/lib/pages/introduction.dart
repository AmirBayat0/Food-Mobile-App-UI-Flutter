import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
//
import '../pages/landscape_mode.dart';
import '../model/introduction_model.dart';
import '../navigator.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SafeArea(
        child: Scaffold(
          body: ConcentricPageView(
            curve: Curves.linear,
            colors: const <Color>[
              Color(0xff4700D8),
              Color(0xff9900F0),
              Color(0xffF900BF),
              Color(0xffFF85B3),
            ],
            itemCount: concentrics.length,
            onFinish: () {
              Get.offAll(()=> const MainNavigator(),
                  transition: Transition.cupertino);
            },
            itemBuilder: (int index, double value) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.offAll(()=>const MainNavigator(),
                              transition: Transition.cupertino);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    child: SizedBox(
                      height: 290,
                      width: 300,
                      child: Lottie.network(concentrics[index].lottie,
                          animate: true),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: Text(
                      concentrics[index].text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: FadeInDown(
                      delay: const Duration(milliseconds: 1500),
                      child: Text(
                        "${index + 1} / ${concentrics.length}",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    } else {
      return const LandScape();
    }
  }
}
