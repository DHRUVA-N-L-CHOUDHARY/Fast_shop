import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/views/Main_pages/My_Account_screen.dart';
import 'package:fast_shop/src/views/Sucess_screens/Return_sucess_screen.dart';
import 'package:fast_shop/src/views/Wishlist_screen.dart';
import 'package:fast_shop/src/views/Main_pages/welcome_screen.dart';
import 'package:flutter/material.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int tabIndex = 2;
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
            WeclomeHomeScreen(),
            MyAccountScreen(),
            WishListScreen(),
            ReturnSucessScreen(),
            MyAccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 57,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: changeTabIndex,
          iconSize: 15.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
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
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.7, height: 26, color: Colors.black54, ),
      activeIcon: Image.asset(icon, scale:1.3, height: 27, color: kPrimaryColor),
      label: label,
    );
  }
}
