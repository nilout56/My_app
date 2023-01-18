import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_project/Provider/state.dart';
import 'package:my_app_project/Provider/store.dart';
import 'package:my_app_project/screens/home_screen.dart';
import 'package:my_app_project/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bloc/bloc.dart';
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
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
        
      
    );
  }
}

