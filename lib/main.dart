import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app_project/Provider/state.dart';
import 'package:my_app_project/Provider/store.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bloc/bloc.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';
void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => Todo())),
        ChangeNotifierProvider(
         create: ((context) => Store()),
        )
      ],
          child: const MyApp(),
    ),);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
        debugShowCheckedModeBanner: false,
        
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home:SplashView(
          loadingIndicator: Lottie.asset('assets/images/indicator.zip'),
        logo: Image.asset('assets/images/Logo1.png'),
        done: Done(HomeScreen()),
       showStatusBar: true,
       duration: Duration(seconds: 10),
       title: Text('ຍິນດີຕ້ອນຮັບ',style: GoogleFonts.notoSansLao(fontSize: 34,fontWeight: FontWeight.bold,color: Color(0xff284F5B)),),
    //     gradient: LinearGradient(
    // begin: Alignment.topCenter,
    // end: Alignment.bottomCenter,
    // colors: <Color>[Color(0xffF8C141), Colors.white]),
  ),
      
        
      
    );
  }
}

