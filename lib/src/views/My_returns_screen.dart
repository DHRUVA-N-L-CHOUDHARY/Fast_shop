import 'package:fast_shop/src/config/Lists/My_return_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_myorder_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyreturnsScreen extends StatelessWidget {
  const MyreturnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(inttxt: "My Returns", navstri: "/ord",),
      backgroundColor: kConrtPrimaryColor,
      body: ListView(
        children: <Widget> [
           Container(
            padding: const EdgeInsets.only(right: 0, left: 0, bottom: 10.0, top: 10.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: MediaQuery.of(context).size.height - 100 ,
            color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: myreturnlist.length,
                itemBuilder: ((context, index) {
                  return myreturnlist[index];
                }),
              ),
            ),
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 8.0),
          //   child: Custommyordercontainer(
          //     ctrinputHeight: 150,
          //     dod: '6 pm Today',
          //     imgpth: nikespts,
          //     name: 'Nike sports wear club Fleece',
          //     orderid: '678901',
          //     ordpe: '12\$',
          //     typser: "Order Delivered",
          //     status: 'Delivered at',
          //     bttxt: "Give Feeback",
          //     nxtsvr: "Return",
          //     opt: true,
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 8.0),
          //   child: Custommyordercontainer(
          //     ctrinputHeight: 150,
          //     dod: '6 pm Today',
          //     imgpth: nikespts,
          //     name: 'Nike sports wear club Fleece',
          //     orderid: '678901',
          //     ordpe: '12\$',
          //     typser: "Order Delivered",
          //     status: 'Delivered at',
          //     bttxt: "Give Feeback",
          //     nxtsvr: "Return",
          //     opt: true,
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 8.0),
          //   child: Custommyordercontainer(
          //     ctrinputHeight: 150,
          //     dod: '6 pm Today',
          //     imgpth: nikespts,
          //     name: 'Nike sports wear club Fleece',
          //     orderid: '678901',
          //     ordpe: '12\$',
          //     typser: "Order Delivered",
          //     status: 'Delivered at',
          //     bttxt: "Give Feeback",
          //     nxtsvr: "Return",
          //     opt: true,
          //   ),
          // ),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: kConrtPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custombutton(
                    text: "Continue Shopping",
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
            ),
          ),
        ],
      ),
    );
  }
}