import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/Topography.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 140,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  logo3x,
                ),
                minRadius: 90,
                maxRadius: 90,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Fast Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Come in and find out",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 150,
              ),
               Custombutton(
                text: "Get Started",
                inputcolor: kConrtPrimaryColor,
                customheight: 55,
                textStyle: TextStyle(fontSize: 22, color: Colors.black, ),
                // textStyle: custombuttontext,
                customwidth: 250,
                inputrad: 5,
                press: () {
                  Get.offAllNamed("/register");
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
