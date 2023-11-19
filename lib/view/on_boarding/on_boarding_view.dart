import 'package:flutter/material.dart';
import 'package:fuelease_customer_app/common/color_extension.dart';
import 'package:fuelease_customer_app/common_widget/round_button.dart';
import 'package:fuelease_customer_app/view/main_tabview/main_tabview.dart';
// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({super.key});

//   @override
//   State<OnBoardingView> createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   int selectPage = 0;
//   PageController controller = PageController();
//   List pageArr = [
//     {"title": "", "subtitle": "", "image": "assets/img/onboard_pic2.webp"},
//     {
//       "title": "Fast Delivery",
//       "subtitle": "Anywhere Anytime Fast Delivery ",
//       "image": "assets/img/onboard_pic.png"
//     },
//     {
//       "title": "Live Tracking",
//       "subtitle":
//           "Real Time  Tracking of YOur fuel on the app\once  you placed the order ",
//       "image": "assets/img/pumb.png"
//     },
//   ];
//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(() {
//       setState(() {
//         selectPage = controller.page?.floor() ?? 0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           PageView.builder(
//             controller: controller,
//             itemCount: pageArr.length,
//             itemBuilder: ((context, index) {
//               var pObj = pageArr[index] as Map? ?? {};
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Container(
//                     width: media.width,
//                     height: media.width,
//                     alignment: Alignment.center,
//                     child: Image.asset(
//                       pObj["image"].toString(),
//                       width: media.width * 0.65,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   SizedBox(
//                     height: media.width * 0.3,
//                   ),
//                   Text(pObj["title"].toString(),
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: TColor.primaryText,
//                           fontSize: 28,
//                           fontWeight: FontWeight.w800)),
//                   SizedBox(
//                     height: media.width * 0.7,
//                   ),
//                   Text(
//                     pObj["subtitle"].toString(),
//                     style: TextStyle(
//                         color: TColor.secondaryText,
//                         fontSize: 13,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: media.width * 0.4,
//                   ),
//                 ],
//               );
//             }),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: media.width * 0.4,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: pageArr.map((e) {
//                   var index = pageArr.indexOf(e);
//                   return Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 4),
//                     height: 6,
//                     width: 6,
//                     decoration: BoxDecoration(
//                         color: index == selectPage
//                             ? TColor.primary
//                             : TColor.placeholder,
//                         borderRadius: BorderRadius.circular(4)),
//                   );
//                 }).toList(),
//               ),
//               SizedBox(
//                 height: media.width * 0.4,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: RoundButton(
//                     title: "Next",
//                     onPressed: () {
//                       if (selectPage >= 2) {
//                         print("Go Home");
//                       } else {
//                         setState(() {
//                           selectPage = selectPage + 1;
//                           controller.animateToPage(selectPage,
//                               duration: Duration(milliseconds: 500),
//                               curve: Curves.bounceInOut);
//                         });
//                       }
//                     }),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }




class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  List pageArr = [
    {
      "title": "Fuel Your Drive",
      "subtitle":
          "Explore premium fuel options for your vehicle\nwith quick and reliable delivery to your location",
      "image": "assets/img/pumb.png",
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Efficient fuel delivery to your location,\nwherever you may be – fast and reliable",
      "image": "assets/img/onboard_pic2.webp",
    },
    {
      "title": "Live Tracking",
      "subtitle":
          "Real time tracking of your fuel on the app\nonce you placed the order",
      "image": "assets/img/live_track.jpg",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: ((context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                  Text(
                    pObj["title"].toString(),
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Text(
                    pObj["subtitle"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.20,
                  ),
                ],
              );
            }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.height * 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: index == selectPage
                            ? TColor.primary
                            : TColor.placeholder,
                        borderRadius: BorderRadius.circular(4)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: media.height * 0.28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                    title: "Next",
                    onPressed: () {
                      if (selectPage >= 2) {
                        // Home Screen
                        //  print("Go Home");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainTabView(),
                          ),
                        );
                      } else {
                        //Next Screen

                        setState(() {
                          selectPage = selectPage + 1;
                          controller.animateToPage(selectPage,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.bounceInOut);
                        });
                      }
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}