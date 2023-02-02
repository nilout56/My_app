import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bouncing_widgets/flutter_bouncing_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:my_app_project/screens/desert.dart';
import 'package:my_app_project/screens/drink.dart';
import 'package:my_app_project/screens/food.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:my_app_project/screens/profile.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool showBtmAppBr = true;
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 140,
          ),
          child: Text(
            "ລາຍການ",
            style: GoogleFonts.notoSansLao(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 120),
          width: 180,
          height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
            color: Color(0xffF8C141),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(4.0, 4.0),
                blurRadius: 20.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Stack(
              children: [
                CustomBounceWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => FoodList()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    height: 120,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 20,
                  child: ClipOval(
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.teal,
                      child: Image.asset(
                        'assets/images/image7.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 60,
                    left: 160,
                    child: Text(
                      'ອາຫານ',
                      style: GoogleFonts.notoSansLao(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Stack(children: [
              CustomBounceWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Drink()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 20.0,
                        ),
                      ]),
                  height: 120,
                ),
              ),
              Positioned(
                  top: 60,
                  left: 160,
                  child: Text(
                    'ເຄຶ່ອງດື່ມ',
                    style: GoogleFonts.notoSansLao(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                left: 10,
                top: 20,
                child: ClipOval(
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.teal,
                    child: Image.asset(
                      'assets/images/image8.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ]),
            Stack(children: [
              CustomBounceWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Desert()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 20.0,
                        ),
                      ]),
                  height: 120,
                ),
              ),
              Positioned(
                left: 10,
                top: 20,
                child: ClipOval(
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.teal,
                    child: Image.asset(
                      'assets/images/image9.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 160,
                  child: Text(
                    'ຂອງຫວານ',
                    style: GoogleFonts.notoSansLao(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )),
            ]),
          ],
        )
      ]),
      bottomNavigationBar: AnimatedContainer(
        child: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                },
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MenuScreen()),
                  );
                },
                icon: const Icon(
                  Icons.restaurant_menu,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => CheckoutScreen()),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ProfileScreen()),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.person_crop_circle,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 70 : 0,
      ),
    );
  }
}
