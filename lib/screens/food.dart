import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:my_app_project/screens/menuScreen.dart';
import 'package:my_app_project/screens/menu_list.dart';
import 'package:my_app_project/screens/profile.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
   GlobalKey bottomNavigationKey = GlobalKey();
  
  int currentPage = 0;
  bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            //Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Color(0xffF8C141),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            'ອາຫານ',
            style: GoogleFonts.notoSansLao(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff284F5B)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/f2.png',
                          fit: BoxFit.cover,
                          width: 1500,
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridF(),
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
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()))),
          TabData(
              iconData: Icons.restaurant_menu,
              title: "ເມນູ",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MenuScreen()))),
          TabData(
              iconData: Icons.shopping_cart,
              title: "ກະຕ່າ",
              onclick: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CheckoutScreen()))),
          TabData(
              iconData: Icons.person,
              title: "ໂປຣໄຟລ໌",
              onclick: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()))),
        ],
        initialSelection: 1,
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

class GridF extends StatefulWidget {
  const GridF({Key? key}) : super(key: key);

  @override
  State<GridF> createState() => _GridFState();
}

class _GridFState extends State<GridF> {
  List menuItems = [
    {
      'name': 'ຜັດສະອິວ',
      'image': Image.asset(
        'assets/images/Ellipse 8.png',
        fit: BoxFit.cover,
      ),
      //'page': MenuList(destination: destinations,),
      'price': "20,000 Kip"
    },
    {
      'name': 'ປາລາດພິກ',
      'image': Image.asset('assets/images/Ellipse 9.png', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "20,000 Kip"
    },
    {
      'name': 'ຜັດເຜັດກະດູກອ່ອນ',
      'image': Image.asset('assets/images/Ellipse 10.png', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "20,000 Kip"
    },
    {
      'name': 'ເຂົ້າຊອຍໄກ່',
      'image': Image.asset(
        'assets/images/Ellipse 11.png',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "20,000 Kip"
    },
    {
      'name': 'ມັກແມວ',
      'image': Image.asset(
        'assets/images/image10.jpg',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "25000 \Kip"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          // mainAxisExtent: 310,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DestinationScreen(
                      destination: destinations[index],
                    ),
                  ),
                ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      // borderRadius: const BorderRadius.only(
                      //   topLeft: Radius.circular(16.0),
                      //   topRight: Radius.circular(16.0),

                      // ),
                      child: Column(
                        children: [
                          menuItems[index]['image'],
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuItems[index]['name'],
                                  style: GoogleFonts.notoSansLao(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuItems[index]['price'],
                                  style: GoogleFonts.notoSansLao(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )));
  }
}
