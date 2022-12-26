import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeclomeHomeScreen extends StatelessWidget {
  const WeclomeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
           SizedBox(
                  height: 40,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: const [
                  Text("Welcome, Jones!"),
                  Text("What are you looking for today!"),
                ],
              ),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 12.0, left: 0.0, bottom: 15.0, top: 15.0),
                child: Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                      image:
                          const DecorationImage(image: AssetImage(notif2x)),
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Container(
              width: SizeConfig(context).screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("")),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(6, 6),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Text("Shop by department"),
                SizedBox( width: 150,),
                Text("View all"),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            foregroundImage: AssetImage(""),
          )
        ],
      ),
    );
  }
}
