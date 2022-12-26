import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Catgoriesscreen extends StatelessWidget {
  const Catgoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
              ],
            )
          ],
        ),
      ),
    );
  }
}