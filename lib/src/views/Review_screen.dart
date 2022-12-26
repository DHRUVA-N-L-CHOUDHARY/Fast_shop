

import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewScren extends StatelessWidget {
  const ReviewScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Review ",
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                right: 12.0, left: 0.0, bottom: 15.0, top: 15.0),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage(notif2x)),
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ],
      ),
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          Row(children: [
            
            
          ],)
        ],
      ),
    );
  }
}