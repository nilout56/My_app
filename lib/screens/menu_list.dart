import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bouncing_widgets/custom_bounce_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app_project/Provider/myController.dart';
import 'package:my_app_project/Provider/state.dart';
import 'package:my_app_project/models/data_dnm.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/checkout_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';
import 'package:my_app_project/Provider/store.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  const DestinationScreen({
    super.key,
    required this.destination,
  });

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  bool check = false;
  int index = 0;

  List menuItems = [
    {
      'name': 'ແກງຂຽວຫວານ',
      'image': Image.asset(
        'assets/images/image6.jpeg',
        fit: BoxFit.cover,
      ),
      //'page': MenuList(destination: destinations,),
      'price': "20000 ",
      'count': 0,
      'sum': 0,
    },
    {
      'name': 'ຕົ້ມຍຳ',
      'image': Image.asset('assets/images/image7.jpeg', fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "50000 ",
      'count': 0,
      'sum': 0,
    },
    {
      'name': 'ເຂົ້າຜັດກຸ້ງ',
      'image': Image.asset('assets/images/image8.jpeg',
          width: 178, height: 100, fit: BoxFit.cover),
      //'page': MenuList(),
      'price': "22000 ",
      'count': 0,
      'sum': 0,
    },
    {
      'name': 'ຕຳໝາກຫຸ່ງ',
      'image': Image.asset(
        'assets/images/image9.jpeg',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "30000 ",
      'count': 0,
      'sum': 0,
    },
    {
      'name': 'ມັກແມວ',
      'image': Image.asset(
        'assets/images/image10.jpg',
        fit: BoxFit.cover,
      ),
      // 'page': MenuList(),
      'price': "25000 ",
      'count': 0,
      'sum': 0,
    },
  ];
  @override
  Widget build(BuildContext context) {
    int? sumAll = 0;
    var provider = context.watch<Store>();
    var todo = context.watch<Todo>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipPath(
                    clipper: HalfClipper(),
                    child: Container(
                      height: 400,
                      color: Color(0xffF8C141),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 280,horizontal: 100),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Hero(
                        tag: widget.destination.imageUrl,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.destination.imageUrl),
                          radius: 50,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 60, horizontal: 10),
                        child: GestureDetector(
                          onTap: () =>Get.back(),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      )
                    ],
                  ),
                         Padding(
              padding: const EdgeInsets.symmetric(vertical: 520),
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 600,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.8, 4.0),
                            blurRadius: 20.0,
                            spreadRadius: 5,
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.destination.type,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  provider.delete(menuItems[index]);
                                  menuItems[index]['count'] = provider.count;
                                  menuItems[index]['sum'] = provider.sum;
                                  // sumAll = 0;
                                  for (int i = 0; i < menuItems.length; i++) {
                                    sumAll =
                                        (sumAll! + menuItems[i]['sum']) as int?;
                                    provider.res(sumAll);
                                  }
                                },
                                icon: ClipOval(
                                    child: Container(
                                        color: Color(0xffF8C141),
                                        child: Icon(Icons.remove,
                                            color: Color(0xff284F5B)))),
                              ),
                              Text(menuItems[index]['count'].toString()),
                              IconButton(
                                onPressed: () {
                                  provider.add(menuItems[index]);
                                  setState(() {
                                    menuItems[index]['count'] = provider.count;
                                    menuItems[index]['sum'] = provider.sum;
                                    //sumAll = 0;
                                    for (int i = 0; i < menuItems.length; i++) {
                                      sumAll = (sumAll! + menuItems[i]['sum'])
                                          as int?;
                                      provider.res(sumAll);
                                    }
                                    print('sumAll $sumAll');
                                  });
                                },
                                icon: ClipOval(
                                    child: Container(
                                        color: Color(0xffF8C141),
                                        child: Icon(Icons.add,
                                            color: Color(0xff284F5B)))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 120),
                    child: Text(
                      'ຈຳນວນເງິນ  ${provider.sumAll}  ກີບ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  //       ]),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
                ],
              ),
            ),
         
     
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
          onPressed: () =>Get.to(()=>CheckoutScreen()),
            child: Text(
              'ຮັບ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff284F5B)),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xffAFCBD1),
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }

  Widget Food(
      {required List<dynamic> menuItems,
      required index,
      required provider,
      required sumAll}) {
    return menuItems[index]['name'] != ''
        ? Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: Text(menuItems[index]['pic']),
                  title: Text(menuItems[index]['name']),
                  subtitle: Text(menuItems[index]['price']),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        provider.remove(menuItems[index]);
                        menuItems[index]['count'] = provider.count;
                        menuItems[index]['sum'] = provider.sum;
                        sumAll = 0;
                        for (int i = 0; i < menuItems.length; i++) {
                          sumAll += menuItems[i]['sum'];
                          provider.res(sumAll);
                        }
                      },
                      icon: Icon(Icons.remove)),
                  Text(menuItems[index]['count'].toString()),
                  IconButton(
                      onPressed: () {
                        provider.add(menuItems[index]);
                        setState(() {
                          menuItems[index]['count'] = provider.count;
                          menuItems[index]['sum'] = provider.sum;
                          sumAll = 0;
                          for (int i = 0; i < menuItems.length; i++) {
                            sumAll = sumAll + menuItems[i]['sum'];
                            provider.res(sumAll);
                          }
                          print('sumAll $sumAll');
                        });
                      },
                      icon: Icon(Icons.add)),
                ],
              )
            ],
          )
        : Text('');
  }
}

class HalfClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w = size.width;
    // double h = size.height;
    final path = Path();

    path.lineTo(0.0, size.height - 70);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 70);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
