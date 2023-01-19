import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:my_app_project/screens/menuScreen.dart';
import 'package:my_app_project/screens/profile.dart';



class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBar();
}

class _CustomNavigationBar extends State<CustomNavigationBar> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  int maxCount = 5;

  /// widget list
  final List<Widget> bottomBarPages = [
    const CheckoutScreen(),
    const HomeScreen(),
    const MenuScreen(),
    const ProfileScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
       // physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length == maxCount)
          ? AnimatedNotchBottomBar(
              pageController: _pageController,
              color: Colors.white,
              showLabel: false,
             // notchColor: Colors.black87,
              bottomBarItems: [
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'HomeScreen',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blueAccent,
                  ),    
                  itemLabel: 'MenuScreen',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Checkout',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),    
                  itemLabel: 'ProfileScreen',
                ),

                ///svg example
           
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.bounceIn,
                );
              },
            )
          : null,
    );
  }
}

