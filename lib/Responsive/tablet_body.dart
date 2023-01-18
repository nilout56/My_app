import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app_project/Provider/store.dart';
import 'package:my_app_project/models/data_dnm.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/bottombar.dart';
import 'package:my_app_project/screens/menu_list.dart';

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({super.key});

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
 late final PageController _pageController;

  int currentPage = 0;

  var _tabColtroller = 0;

  var _selectedIndex = 0;

  List menuItems = [
    {
      'name': 'ແກງຂຽວຫວານ',
      'image': Image.asset(
        'assets/images/image6.jpeg',
        fit: BoxFit.cover,
      ),
      //'page': MenuList(destination: destinations,),
      'price': "40000"
    },
    {
      'name': 'ຕົ້ມຍຳ',
      'image': Image.asset('assets/images/image7.jpeg', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "40000"
    },
    {
      'name': 'ເຂົ້າຜັດກຸ້ງ',
      'image': Image.asset('assets/images/image8.jpeg',
          width: 178, height: 100, fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "22000"
    },
    {
      'name': 'ຕຳໝາກຫຸ່ງ',
      'image': Image.asset(
        'assets/images/image9.jpeg',
        fit: BoxFit.cover,
      ),
     // 'page': MenuList(),
      'price': "30000"
    },
    {
      'name': 'ຄົນຫຼໍ່',
      'image': Image.asset(
        'assets/images/image10.jpg',
        fit: BoxFit.cover,
      ),
     // 'page': MenuList(),
      'price': "25000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
         SafeArea(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.81,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  PageView.builder(
                    pageSnapping: true,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(
                          demoBigImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    itemCount: demoBigImages.length,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        demoBigImages.length,
                        ((index) => Indicator(
                            isActive: currentPage == index ? true : false)),
                      )
                    ],
                  ),
                ]),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'ອາຫານປະຈຳອາທິດ',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) =>
                                      DestinationScreen(destination: destinations[index], ))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 500,
                              height: 280,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Column(
                                  children: [
                                    menuItems[index]['image'],
                                    
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text(
                                            menuItems[index]['name'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            menuItems[index]['price'],
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xfff17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //bottomNavigationBar: BottomBar(),
    );
  }
}

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
              color: isActive ? Colors.teal : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}