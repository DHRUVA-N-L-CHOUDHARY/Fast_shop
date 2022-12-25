import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wishlist",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: (() {
            Get.toNamed("/menu");
          }),
        ),
        backgroundColor: kConrtPrimaryColor,
        elevation: 0,
        toolbarHeight: 70,
        actions: const [
          Text(
            "Delete",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: kConrtPrimaryColor,
      body: Container(
        
      ),
    );
  }
}
