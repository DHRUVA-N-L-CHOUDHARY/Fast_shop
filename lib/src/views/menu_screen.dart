import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/controllers/logout_controller.dart';
import 'package:fast_shop/src/routes/app_pages.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    LogoutController logoutController = Get.put(LogoutController());

    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Custombutton(
            inputcolor: kPrimaryColor,
            customheight: 55,
            customwidth: 280,
            inputrad: 15,
            textStyle: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
            text: "Logout",
            press: () {
              logoutController.logoutUser().then((value) {
                Get.offAllNamed(Routes.LOGIN);
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "SHIPFAQ",
              press: () {
                Get.toNamed("/shpfaq");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "SHIPPING ADDRESS PAGE",
              press: () {
                Get.toNamed("/shpadd");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "SHIPPING ADDRESS  PICK PAGE",
              press: () {
                Get.toNamed("/shpaddpick");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "RETURN FAQ",
              press: () {
                Get.toNamed("/retfaq");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "PAYMENT FAQ",
              press: () {
                Get.toNamed("/payfaq");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              text: "NAVIGATION",
              press: () {
                Get.toNamed("/nav");
              },
            ),
          ),
        ],
      ),
    );
  }
}
