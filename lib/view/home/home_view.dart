import 'package:flutter/material.dart';
import 'package:fuelease_customer_app/common/color_extension.dart';
import 'package:fuelease_customer_app/common_widget/round_textfield.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  List catArr = [
    {"image": "", "name": ""},
    {"image": "", "name": ""},
    {"image": "", "name": ""},
  ];
   List recentArr = [
    {"image": "", "name": "", "rate":"","rating":"","type":"","location":""},
    {"image": "", "name": ""},
    {"image": "", "name": ""},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            const SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good morning Ashik!",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Delivering to",
            //         style: TextStyle(color: TColor.secondaryText, fontSize: 11),
            //       ),
            //       const SizedBox(
            //         height: 6,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Current Location",
            //             style: TextStyle(
            //                 color: TColor.secondaryText,
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w700),
            //           ),
            //           const SizedBox(
            //             width: 25,
            //           ),
            //           Image.asset(
            //             "assets/img/dropdown.png",
            //             width: 12,
            //             height: 12,
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: RoundTextfield(
            //     hintText: "Search Fuel",
            //     controller: txtSearch,
            //     left: Container(
            //       alignment: Alignment.center,
            //       width: 30,
            //       child: Image.asset(
            //         "assets/img/search.png",
            //         width: 20,
            //         height: 20,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivering to",
                    style: TextStyle(color: TColor.secondaryText, fontSize: 11),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add code to handle location selection
                      // This could open a map or show a list of available locations
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          "assets/img/location.png", // Change to your location icon asset
                          width: 12,
                          height: 12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundTextfield(
                hintText: "Search Fuel",
                controller: txtSearch,
                left: Container(
                  alignment: Alignment.center,
                  width: 30,
                  child: Image.asset(
                    "assets/img/search.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
             const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 140,
              child: ListView.builder(scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.symmetric(horizontal: 15),
               itemCount: catArr.length,
              itemBuilder: ((context,index){
                var cObj = catArr [index] as Map ? ?? {};
                return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(cObj
                        ["image"].toString(),
                        width: 85,
                        height: 85,
                        fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
              height: 8,
            ),
             Text(
                        "Current Location",
                        
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),

                    ],
                  ) ,
                );

              }
              ),
            ),),
          ]
          ),
        ),
      ),
    );
  }
}
