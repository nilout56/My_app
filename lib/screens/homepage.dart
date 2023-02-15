import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bouncing_widgets/custom_bounce_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:my_app_project/Provider/store.dart';
import 'package:my_app_project/models/data_dnm.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/bottombar.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:my_app_project/screens/menuScreen.dart';
import 'package:my_app_project/screens/menu_list.dart';
import 'package:my_app_project/screens/profile.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  GlobalKey bottomNavigationKey = GlobalKey();
  
  int currentPage = 0;
  bool showBtmAppBr = true;
  final bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: DoubleBack(
       // background: Color(0xffF8C141),
       // textStyle: TextStyle(color: Color(0xff284F5B)),
        message: "ກົດ back ອີກຄັ້ງເພື່ອອອກຈາກລະບົບ",
        child: Stack
        (children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 0),
                    child: Image.asset(
                      'assets/images/Logo1.png',
                      width: 238,
                      height: 60,
                    ),
                  ),
                  Stack(
                    children: [
                     Container(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlayInterval: Duration(seconds: 10),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 3000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.5,
                            onPageChanged: (index, reason) {
                                currentPage = index;
                              setState(() {
                              });
                            },
                          ),
                          itemCount: demoBigImages.length,
                          itemBuilder: (context, index, realIndex) {
                            // ((index) => Indicator(
                            //     isActive: currentPage == index ? true : false));
                            final demoBigImages = _imageSliders[index];
                            return demoBigImages;
                          }),
                    ),
                  Positioned(
                  top: 170,
                  left: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) => Container(
                      margin: EdgeInsets.all(2.0),
                      child: Icon(Icons.circle,size: 12,
                      color: currentPage == index? Color(0xffF8C141):Colors.grey.shade300 ,
                      
                      ),
                    ),
                    ),
                  
                  ),
                  ),
                ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text("ອາຫານຍອດນິຍົມ",style: GoogleFonts.notoSansLao(fontSize: 22,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridB(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text("ອາຫານປະຈຳລະດູ",style: GoogleFonts.notoSansLao(fontSize: 22,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridC(),
                  ),
                  
                  
                ],
              ),
            ),
          ),
        //BottomNav(),
        //BottomBar(),
           // MyBottomBar()
           // CustomNavigationBar()
        ]
        ),
      ),
      
    
      // floatingActionButtonLocation: showBtmAppBr
      //     ? FloatingActionButtonLocation.centerDocked
      //     : FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.shopping_cart_checkout,
      //   ),
      // ),
    
    
      // bottomNavigationBar: AnimatedContainer(
        
      //   child: BottomAppBar(
      //     notchMargin: 8.0,
      //     shape: const CircularNotchedRectangle(),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(
                
      //           onPressed: () {
      //              Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
      //           },
      //           icon: const Icon(
                  
      //             Icons.home_outlined,
                  
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.push(context,MaterialPageRoute(builder: (_) => MenuScreen()),);
      //           },
      //           icon: const Icon(
      //             Icons.restaurant_menu,
      //           ),
      //         ), 
      
      //         IconButton(
      //           onPressed: () {
      //              Navigator.push(context,MaterialPageRoute(builder: (_) => CheckoutScreen()),);
      //           },
      //           icon: const Icon(
      //             CupertinoIcons.cart,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //              Navigator.push(context,MaterialPageRoute(builder: (_) => ProfileScreen()),);
      //           },
      //           icon: const Icon(
      //             CupertinoIcons.person_crop_circle,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   duration: const Duration(
      //     milliseconds: 800,
      //   ),
      //   curve: Curves.easeInOutSine,
      //   height: showBtmAppBr ? 70 : 0,
      // ),



      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xffF8C141),
        activeIconColor: Color(0xff284F5B),
        inactiveIconColor:Color(0xff284F5B),
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "ໜ້າຫຼັກ",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(1);
              }),
          TabData(
              iconData: Icons.restaurant_menu,
              title: "ເມນູ",
               onclick: () =>Get.to(()=>MenuScreen())),
                  
          TabData(
            iconData: Icons.shopping_cart, title: "ກະຕ່າ",  
            onclick: () =>Get.to(()=>CheckoutScreen())
                  ),
                
    
                  
          TabData(iconData: Icons.person, title: "ໂປຣໄຟລ໌",
           onclick: () =>Get.to(()=>ProfileScreen())),
                  
        ],
        initialSelection: 0,
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

final List<Widget> _imageSliders = demoBigImages
    .map((demoBigImages) => Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        demoBigImages,
                        fit: BoxFit.cover,
                        width: 1500,
                      ),


                    ],
                  )),
            ),
          ),
        ))
    .toList();

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Opacity(
          opacity: 0.8,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            width: isActive ? 22.0 : 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: isActive ? Color(0xffF8C141) : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  List menuItems = [
    {
      'name': 'ແກງຂຽວຫວານ',
      'image': Image.asset(
        'assets/images/image6.jpeg',
        fit: BoxFit.cover,
      ),
      //'page': MenuList(destination: destinations,),
      'price': "40000 \Kip"
    },
    {
      'name': 'ຕົ້ມຍຳ',
      'image': Image.asset('assets/images/image7.jpeg', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "40000 \Kip"
    },
    {
      'name': 'ເຂົ້າຜັດກຸ້ງ',
      'image': Image.asset('assets/images/image8.jpeg',
          width: 178, height: 100, fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "22000 \Kip"
    },
    {
      'name': 'ຕຳໝາກຫຸ່ງ',
      'image': Image.asset(
        'assets/images/image9.jpeg',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "30000 \Kip"
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
        itemBuilder: (context, index,) => GestureDetector(
            onTap: () => Get.to(()=>DestinationScreen(destination: destinations[index],),),
            // () => 
            // Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (_) =>
            //             DestinationScreen(destination: destinations[index],),
            //       ),
            //     ),
            // child: CustomBounceWidget(
            //   onPressed: () =>Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (_) =>
            //             DestinationScreen(destination: destinations[index],),
            //       ),
            //     ),
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
                                     style: GoogleFonts.notoSansLao(fontSize: 18,)
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
                        )
                        ),
                        
                  ],
                ),
              ),
            )
          //  )
            );
  }
}
class GridC extends StatefulWidget {
  const GridC({Key? key}) : super(key: key);

  @override
  State<GridC> createState() => _GridCState();
}

class _GridCState extends State<GridC> {
  List menuItems = [
    {
      'name': 'ແກງຂຽວຫວານ',
      'image': Image.asset(
        'assets/images/image6.jpeg',
        fit: BoxFit.cover,
      ),
      //'page': MenuList(destination: destinations,),
      'price': "40000 \Kip"
    },
    {
      'name': 'ຕົ້ມຍຳ',
      'image': Image.asset('assets/images/image7.jpeg', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "40000 \Kip"
    },
    {
      'name': 'ເຂົ້າຜັດກຸ້ງ',
      'image': Image.asset('assets/images/image8.jpeg',
          width: 178, height: 100, fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "22000 \Kip"
    },
    {
      'name': 'ຕຳໝາກຫຸ່ງ',
      'image': Image.asset(
        'assets/images/image9.jpeg',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "30000 \Kip"
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
           onTap: () =>Get.to(()=>DestinationScreen(destination: destinations[index],),
                        
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
                                   style: GoogleFonts.notoSansLao(fontSize: 18,)
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
                      )
                      ),
                      
                ],
              ),
            )));
  }
}
