import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_list_tile_radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Returnproductreasonscreen extends StatelessWidget {
  const Returnproductreasonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(inttxt: "Return Status", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0),
              child: Row(
                children: [
                  Image.asset(
                    bgbl,
                    height: 80,
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: SizedBox(
                      width:
                          SizeConfig(context).getProportionateScreenWidth(227),
                      child: const Text(
                        "Nike Academy team Sports bag \n 90\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: SizeConfig(context).screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.25),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            SizedBox(
              height: SizeConfig(context).getProportionateScreenHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: [
                  Text(
                    "What do you want in return?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            CustomListTileRadio(
              inputtext: "Received wrong item",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "Don\'t want the product anymore",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "Received different color \/ style",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "Product is missing in the package",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "Quality of the product not as expected",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "The product received is defective",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
            CustomListTileRadio(
              inputtext: "Received damaged item",
              onChanged: (String val) {},
              radid: 1,
              radstr: '',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: kConrtPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custombutton(
                text: "Continue",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 330,
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
      ),
    );
  }
}