import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BillingpurScreen extends StatelessWidget {
  const BillingpurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          Container(
            height: SizeConfig(context).getProportionateScreenHeight(300),
            width: SizeConfig(context).screenWidth,
            decoration:  BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(5, 5),
                ),
              ],
              color: kConrtPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(sucflpy),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
