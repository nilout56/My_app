import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_app_project/models/data_dnm.dart';
import 'package:my_app_project/models/destination.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:my_app_project/screens/menu_list.dart';

class Desert extends StatefulWidget {
  const Desert({super.key});

  @override
  State<Desert> createState() => _DesertState();
}

class _DesertState extends State<Desert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
           // Navigator.push(context,MaterialPageRoute(builder: (_) => HomeScreen()),);
          },
          child: Icon(Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Color(0xffF8C141),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'ຂອງຫວານ',
            style: TextStyle(
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
                        Image.asset('assets/images/image9.jpeg',
                          fit: BoxFit.cover,
                          width: 1500,
                        ),
                      ],
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridD(),
            )
          ],
          
        ),
        
      ),
    );
  }
}
class GridD extends StatefulWidget {
  const GridD({Key? key}) : super(key: key);

  @override
  State<GridD> createState() => _GridDState();
}

class _GridDState extends State<GridD> {
  List menuItems = [
    {
      'name': 'ແກງສົ້ມ',
      'image': Image.asset(
        'assets/images/image12.jpg',
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
        physics: const NeverScrollableScrollPhysics(),
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
                    builder: (_) =>
                        DestinationScreen(destination: destinations[index],),
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
