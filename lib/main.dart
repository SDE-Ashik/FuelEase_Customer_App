import 'package:flutter/material.dart';
import 'on';
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
home: const StartupView(),

    );
  }
}

