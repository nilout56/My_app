import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app_project/Provider/state.dart';
import 'package:my_app_project/screens/pay.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<Todo>().tasks;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios_new)),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
            child: Image.asset(
              'assets/images/lo1.png',
              width: 238,
              height: 60,
            ),
          ),
          Stack(children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                          'ໃບບິນ',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff284F5B)),
                        )),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                  height: 800,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                      color: Color(0xffF8C141),
                      shadows: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 20.0,
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ))),
                ),

                // CheckoutItem(tasks: tasks)
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 260, horizontal: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: 400,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/image8.jpeg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ເຂົ້າຜັດກຸ້ງ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '25.000 ກີບ',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Color(0xffF8C141),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove,
                                        color: Color(0xff284F5B))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '01',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipOval(
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  color: Color(0xffF8C141),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add,
                                          color: Color(0xff284F5B)))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: 400,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/image8.jpeg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ເຂົ້າຜັດກຸ້ງ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '25.000 ກີບ',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Color(0xffF8C141),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove,
                                        color: Color(0xff284F5B))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '01',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipOval(
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  color: Color(0xffF8C141),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add,
                                          color: Color(0xff284F5B)))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: 400,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/image8.jpeg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ເຂົ້າຜັດກຸ້ງ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '25.000 ກີບ',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          children: [
                            ClipOval(
                              child: Container(
                                color: Color(0xffF8C141),
                                width: 40,
                                height: 40,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove,
                                        color: Color(0xff284F5B))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '01',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            ClipOval(
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    color: Color(0xffF8C141),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add,
                                            color: Color(0xff284F5B))))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ລວມເງິນ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '75.000 ກີບ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ສ່ວນຫຼຸດ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '0%',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10/01/2023',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '-------------------------------',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ລວມເງິນທັງໝົດ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '75.000 ກີບ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 10.0,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(140)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                              child: Text('ຈ່າຍເງິນສົດ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (_) => Pay()),);
                        },
                        child: Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 10.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(140)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                child: Text('ຈ່າຍເງິນໂອນ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  final List tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            ListTile(
                title: Text(
              tasks[index],
            ))
          ]);
        });
  }
}
