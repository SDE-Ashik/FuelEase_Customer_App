import 'package:fuelease_customer_app/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FuelEase",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Color(0xFFEF6969),
      ) ,
  home: MySplashScreen(),
    );
  }
}

