import 'package:flutter/material.dart';
import 'package:fuelease_customer_app/view/on_boarding/startup_view.dart';
import 'package:fuelease_customer_app/view/login/login_view.dart';
// import 'on';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fuelease',
      theme: ThemeData(fontFamily: "Metropolis",
      
      
      
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      useMaterial3: true,
      ),
home: const LoginView(),

    );
  }
}


