import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SavedCardsScreen extends StatelessWidget {
  const SavedCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shipping FAQs",
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
        toolbarHeight: 60,
      ),
      backgroundColor: kConrtPrimaryColor,
      body: Container(
          child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("There are no saved cards"),
        ],
      )),
    );
  }
}
