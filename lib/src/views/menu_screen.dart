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
        body: Center(
          child: Custombutton(
            inputcolor: kPrimaryColor,
            customheight: 55,
            customwidth: 280,
            inputrad: 15,
            textStyle: TextStyle(
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
        ));
  }
}
