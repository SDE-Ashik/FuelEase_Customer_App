import 'dart:async';
// import 'package:demo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:fuelease_customer_app/view/login/login_view.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const LoginView()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset("assets/img/demo_logo.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(70.0),
                    //   child: Image.asset("assetes/images/fuel1.jpeg"),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
