// import 'package:flutter/material.dart';
// import 'package:fuelease_customer_app/view/login/welcome_view.dart';
// // import 'package:food_delivery/view/main_tabview/main_tabview.dart';
// // import 'package:fuelease_customer_app/view/on_boarding/startup_view.dart';
// // import '../../common/globs.dart';

// class StartupView extends StatefulWidget {
//   const StartupView({super.key});

//   @override
//   State<StartupView> createState() => _StarupViewState();
// }

// class _StarupViewState extends State<StartupView> {
//   @override
//   void initState() {
//     super.initState();
//     goWelcomePage();
//   }

//   void goWelcomePage() async {

//       await Future.delayed( const Duration(seconds: 3) );
//       welcomePage();
//   }
//   void welcomePage(){

//     // if (Globs.udValueBool(Globs.userLogin)) {
//     //    Navigator.push(context,
//     //       MaterialPageRoute(builder: (context) => const MainTabView()));
//     // }else{
//        Navigator.push(
//         context, MaterialPageRoute(builder: (context) => const MySplashScreen()));
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset(
//             "assets/img/splash_bg.png",
//             width: media.width,
//             height: media.height,
//             fit: BoxFit.cover,
//           ),
//           Image.asset(
//             "assets/img/app_logo.png",
//              width: media.width * 0.55,
//             height: media.width * 0.55,
//             fit: BoxFit.contain,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
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
        color: Colors.white,
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
              const Padding(
                padding: EdgeInsets.all(18.0),
                // child: Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(70.0),
                //       child: Image.asset("assetes/img/applogo.png"),
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
