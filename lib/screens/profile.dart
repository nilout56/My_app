import 'dart:math';

import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:my_app_project/screens/menuScreen.dart';
import 'package:my_app_project/screens/menu_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   GlobalKey bottomNavigationKey = GlobalKey();
  
  int currentPage = 0;
   bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: Text(
                'ກ່ຽວກັບພວກເຮົາ',
                style: GoogleFonts.notoSansLao(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff284F5B)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Color(0xffF8C141),
                                spreadRadius: 2)
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffF8C141),
                          radius: 90,
                          child: CircleAvatar(
                            maxRadius: 80.0,
                            minRadius: 30,
                            backgroundImage: AssetImage(
                              'assets/images/teacher.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ດຣ. ສະຫວາດ ໄຊປະດິດ',
                    style: GoogleFonts.notoSansLao(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff284F5B)),
                  ),
                  Text(
                    'ອາຈານທີ່ປຶກສາ',
                    style: GoogleFonts.notoSansLao(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff284F5B)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 135,
                    width: 387,
                    decoration: BoxDecoration(
                        color: Color(0xffF8C141),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(65.5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF8C141),
                            radius: 50,
                            child: CircleAvatar(
                              maxRadius: 90.0,
                              minRadius: 50,
                              backgroundImage: AssetImage(
                                'assets/images/image10.jpg',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ທ. ນິລຸດ ເຮືອງແພງສີ',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                '225N074820',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                'Developer',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 135,
                    width: 387,
                    decoration: BoxDecoration(
                        color: Color(0xffF8C141),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(65.5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF8C141),
                            radius: 50,
                            child: CircleAvatar(
                              maxRadius: 90.0,
                              minRadius: 50,
                              backgroundImage: AssetImage(
                                'assets/images/koy.jpeg',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ນ. ປານຕາວັນ ໄຊຍະເພັດ',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                '225N076420',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                'UX Designer',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 135,
                    width: 387,
                    decoration: BoxDecoration(
                        color: Color(0xffF8C141),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(65.5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF8C141),
                            radius: 50,
                            child: CircleAvatar(
                              maxRadius: 90.0,
                              minRadius: 50,
                              backgroundImage: AssetImage(
                                'assets/images/elae.jpg',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ນ. ພັນມະຫາ ຈັນທະວັນເຮືອງ',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                '225Q09720',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                              Text(
                                'UI Designer',
                                style: GoogleFonts.notoSansLao(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff284F5B)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 500,
              decoration: ShapeDecoration(
                  color: Color(0xffAFCBD1),
                  shadows: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.8, 4.0),
                      blurRadius: 10.0,
                      spreadRadius: 3,
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(180),
                    //topLeft: Radius.circular(180),
                    //bottomRight: Radius.circular(200),
                    bottomLeft: Radius.circular(200),
                  ))),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ຈຸດປະສົງ',
                      style: GoogleFonts.notoSansLao(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff284F5B)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '\t\tແອັບພິເຄຊັນ Want To Eat ຂອງພວກເຮົາສ້າງຂຶ້ນມາເພື່ອເປັນສ່ວນຫນຶ່ງໃນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຮ້ານອາຫານ ແລະ ເພື່ອຕອບໂຈດລະບົບຮ້ານອາຫານທີ່ປ່ຽນຈາກການສັ່ງອາຫານແບບທຳມະດາມາໃຊ້ເປັນລະບົບແອັບພິເຄຊັນ.\nໃນອະນາຄົດພວກເຮົາອາດມີການພັດທະນາໃຫ້ຄອບຄຸມລະບົບທັງຫມົດຂອງຮ້ານອາຫານ ແລະ ຕໍ່ຍອດໃຫ້ດີຂຶ້ນເລື້ອຍໆ.',
                      style: GoogleFonts.notoSansLao(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff284F5B)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'ຂໍຂອບໃຈ',
                    style: GoogleFonts.notoSansLao(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff284F5B)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xffF8C141),
        activeIconColor: Color(0xff284F5B),
        inactiveIconColor: Color(0xff284F5B),
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "ໜ້າຫຼັກ",
               onclick: () =>Get.to(()=>HomeScreen())),
          TabData(
              iconData: Icons.restaurant_menu,
              title: "ເມນູ",
             onclick: () =>Get.to(()=>MenuScreen())),
          TabData(
              iconData: Icons.shopping_cart,
              title: "ກະຕ່າ",
              onclick: () =>Get.to(()=>CheckoutScreen())),
          TabData(
              iconData: Icons.person,
              title: "ໂປຣໄຟລ໌",
              onclick: () =>Get.to(()=>ProfileScreen())),
        ],
        initialSelection: 3,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: min(size.width, size.height) / 2,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
