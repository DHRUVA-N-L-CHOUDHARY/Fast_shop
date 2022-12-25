import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/views/My_Account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int tabIndex = 0;
  void changeTabIndex(int index)
  {
    setState(() {
      tabIndex = index;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: tabIndex,
          children: const [
            MyAccountScreen(),
            MyAccountScreen(),
            MyAccountScreen(),
            MyAccountScreen(),
            MyAccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        onTap: changeTabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: tabIndex,
        items: [
          _bottomNavigationBarItem(
            icon: house,
            label: "",
          ),
          _bottomNavigationBarItem(
            icon: twotoneelement,
            label: "",
          ),
          _bottomNavigationBarItem(
            icon: twotoneheart,
            label: "",
          ),
          _bottomNavigationBarItem(
            icon: navcart,
            label: "",
          ),
          _bottomNavigationBarItem(
            icon: navuser,
            label: "",
          )
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.7, color: Colors.black54, ),
      activeIcon: Image.asset(icon, scale:1.3,  color: kPrimaryColor),
      label: label,
    );
  }
}
