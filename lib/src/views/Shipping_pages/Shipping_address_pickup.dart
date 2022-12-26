import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Shipping_address/Custom_List_tile_address.dart';
import 'package:fast_shop/src/utils/widgets/Shipping_address/Custom_address_container.dart';
import 'package:fast_shop/src/utils/widgets/Shipping_address/Custom_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ShippingAddressPickup extends StatelessWidget {
  const ShippingAddressPickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shipping Address",
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
            Get.toNamed("/nav");
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
              // child: IconButton(
              //   iconSize: 50,
              //   icon:  const ImageIcon(
              //     AssetImage(notif),
              //     size: 100,
              //     color: kConrtPrimaryColor,
              //   ),
              //   onPressed: () {},
              // ),
            ),
          )
        ],
      ),
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CustomContainer(
                    ctrinputHeight: 60,
                    ctrinputWidth: 150,
                    brdcolor: Colors.black,
                    inputtext: "Home Delivery",
                    bexist: true,
                    onChanged: (String val) {},
                    radid: 1,
                    radstr: 'Home Delivery',
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  CustomContainer(
                    ctrinputHeight: 60,
                    ctrinputWidth: 150,
                    brdcolor: Colors.black,
                    inputtext: "Pick Up Point",
                    bexist: true,
                    onChanged: (String val) {},
                    radid: 2,
                    radstr: 'Pick Up Point',
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              CustomListTileAddress(
                inputtext: "Skew bridge",
                inputsubtext: "2345 Calefornia west london",
                onChanged: (String val) {},
                radid: 1,
                radstr: '',
              ),
              CustomListTileAddress(
                inputtext: "Town hall",
                inputsubtext: "novak west paris",
                onChanged: (String val) {},
                radid: 2,
                radstr: '',
              ),
              CustomListTileAddress(
                inputtext: "Ware house",
                inputsubtext: "23 west bringham",
                onChanged: (String val) {},
                radid: 3,
                radstr: '',
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: kConrtPrimaryColor,
        height: 250,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Sub Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "208\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Vat",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "0\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              leading: Text(
                "Shipping Charge",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "13\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 1,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border.all(
                      color: Colors.black45,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Text(
                "Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "221\$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              visualDensity: VisualDensity(vertical: -1),
            ),
            const SizedBox(
              height: 5,
            ),
            Custombutton(
              text: "Continue",
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
