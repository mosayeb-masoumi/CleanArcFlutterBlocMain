
import 'package:clean_arc_flutter_test/features/home_page/presentation/page/home_page.dart';
import 'package:flutter/material.dart';

import 'di.dart';
import 'features/splash/presentation/page/splash_page.dart';
void main() {

  setUpDI(); // to set get_it dependency injection
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: SplashPage(),
    );
  }
}


