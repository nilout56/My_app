//import 'dart:html';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:quickalert/quickalert.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 0),
                  child: IconButton(
                      onPressed:() =>Get.back(),
                      icon: Icon(Icons.arrow_back_ios_new))),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 150,
                        vertical: 0,
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                    height: 600,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 250),
                child: Center(
                    child: Image.asset(
                  'assets/images/qr.jpeg',
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 600),
                child: Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (success == false) {
                            success = true;
                            QuickAlert.show(
                              widget: Column(
                                children: [
                                  //Lottie.network('https://assets2.lottiefiles.com/packages/lf20_iux6ajkg.json',),
                                  Center(
                                    child: Text(
                                      '??????????????????????????????????????????????????????',
                                      style: GoogleFonts.notoSansLao(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff284F5B)),
                                    ),
                                  )
                                ],
                              ),
                              context: context,
                              type: QuickAlertType.success,
                              //text: '???????????????????????????????????????',
                              borderRadius: 20,
                              animType: QuickAlertAnimType.slideInUp,
                              title: '???????????????????????????????????????',
                              textColor: Color(0xff284F5B),
                              barrierColor: Colors.green,
                              barrierDismissible: true,
                              confirmBtnText: '??????????????????',
                              confirmBtnColor: Colors.green,
                              autoCloseDuration: Duration(seconds: 5),
                              onConfirmBtnTap:() =>Get.to(()=>HomeScreen(),)
                              //  () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => HomeScreen(),
                              //       ));
                              // },
                            );

                            _controller.forward();
                          } else {
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              title: '????????????????????????????????????????????????',
                              text: '?????????????????????????????????????????????????????????...',
                              backgroundColor: Colors.white,
                              titleColor: Color(0xff284F5B),
                              textColor: Color(0xff284F5B),
                              barrierColor: Colors.red,
                              confirmBtnColor: Colors.red,
                              confirmBtnText: '??????????????????',
                              autoCloseDuration: Duration(seconds: 5),
                            );
                            success = false;
                            _controller.reverse();
                          }
                        },
                        child: Container(
                          width: 175,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(140),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                            child: Text(
                              '??????????????????',
                              style: GoogleFonts.notoSansLao(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
