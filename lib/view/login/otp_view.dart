import 'package:flutter/material.dart';
import 'package:fuelease_customer_app/common/color_extension.dart';
import 'package:fuelease_customer_app/common_widget/round_button.dart';
import 'package:fuelease_customer_app/view/login/new_password_view.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
// import 'package:flutter/material.dart';
// import 'package:fuelease_customer_app/common/color_extension.dart';
// import 'package:fuelease_customer_app/common_widget/round_button.dart';
// import 'package:fuelease_customer_app/view/login/new_password_view.dart';
// // import 'package:fuelease_customer_app/common/extension.dart';
// // import 'package:fuelease_customer_app/common_widget/round_button.dart';
// // import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// // import '../../common/globs.dart';
// // import '../../common/service_call.dart';

// class OTPView extends StatefulWidget {
//   // final String email;
//   const OTPView({super.key});
//   //  required this.email});

//   @override
//   State<OTPView> createState() => _OTPViewState();
// }

// class _OTPViewState extends State<OTPView> {
//   TextEditingController txtEmail = TextEditingController();
//   // String code = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 64,
//               ),
//               Text(
//                 "We have sent an OTP to your email",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: TColor.primaryText,
//                     fontSize: 30,
//                     fontWeight: FontWeight.w800),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 "Please check your email hsahahakh \ncontinue to reset your password",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: TColor.secondaryText,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500),
//               ),
//               const SizedBox(
//                 height: 60,
//               ),
//               // SizedBox(
//               //   height: 60,
//               //   // child: OtpPinField(
//               //   //     key: _otpPinFieldController,
//               //   //     autoFillEnable: true,

//               //   //     ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
//               //   //     textInputAction: TextInputAction.done,

//               //   //     ///in case you want to change the action of keyboard
//               //   //     /// to clear the Otp pin Controller
//               //   //     onSubmit: (newCode) {
//               //   //       code = newCode;
//               //   //       btnSubmit();

//               //   //       /// return the entered pin
//               //   //     },
//               //   //     onChange: (newCode) {
//               //   //       code = newCode;

//               //   //       /// return the entered pin
//               //   //     },
//               //   //     onCodeChanged: (newCode) {
//               //   //       code = newCode;
//               //   //     },
//               //   //     fieldWidth: 40,

//               //       /// to decorate your Otp_Pin_Field
//               //       otpPinFieldStyle: OtpPinFieldStyle(

//               //           /// border color for inactive/unfocused Otp_Pin_Field
//               //           defaultFieldBorderColor: Colors.transparent,

//               //           /// border color for active/focused Otp_Pin_Field
//               //           activeFieldBorderColor: Colors.transparent,

//               //           /// Background Color for inactive/unfocused Otp_Pin_Field
//               //           defaultFieldBackgroundColor: TColor.textfield,
//               //           activeFieldBackgroundColor: TColor.textfield

//               //           /// Background Color for active/focused Otp_Pin_Field
//               //           ),
//               //       maxLength: 6,

//               //       /// no of pin field
//               //       showCursor: true,

//               //       /// bool to show cursor in pin field or not
//               //       cursorColor: TColor.placeholder,

//               //       /// to choose cursor color
//               //       upperChild: const Column(
//               //         children: [
//               //           SizedBox(height: 30),
//               //           Icon(Icons.flutter_dash_outlined, size: 150),
//               //           SizedBox(height: 20),
//               //         ],
//               //       ),
//               //       showCustomKeyboard: false,

//               //       ///bool which manage to show custom keyboard
//               //       // customKeyboard: Container(),  /// Widget which help you to show your own custom keyboard in place if default custom keyboard
//               //       // showDefaultKeyboard: true,  ///bool which manage to show default OS keyboard
//               //       cursorWidth: 3,

//               //       /// to select cursor width
//               //       mainAxisAlignment: MainAxisAlignment.center,

//               //       /// place otp pin field according to yourselft

//               //       /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
//               //       ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
//               //       otpPinFieldDecoration:
//               //           OtpPinFieldDecoration.defaultPinBoxDecoration),
//               // ),
//               const SizedBox(
//                 height: 30,
//               ),

//               RoundButton(
//                   title: "Next",
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => NewPasswordView(),
//                       ),
//                     );
//                   }),

//               RoundButton(
//                   title: "Next",
//                   onPressed: () {
//               //       btnSubmit();
//                   }),
//               TextButton(
//                 onPressed: () {
//               //     serviceCallForgotRequest({"email": widget.email});
//                 },
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Didn't Received? ",
//                       style: TextStyle(
//                           color: TColor.secondaryText,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500),
//                     ),
//               Text(
//                 "Click Here",
//                 style: TextStyle(
//                     color: TColor.primary,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700),
//               ),
//             ],
//           ),
//         ),
//         ],
//       ),
//     ),
//     );
//   }
// }

class OTPView extends StatefulWidget {
  // You had an error in the constructor, corrected it here
  const OTPView({Key? key}) : super(key: key);

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(), // Added a key for the Scaffold
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "We have sent an OTP to your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Please check your email and continue to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 60,
              ),
              // You had some commented-out code related to OTP input, I've removed it
              SizedBox(
                height: 60,
                child: OtpPinField(
                    key: _otpPinFieldController,
                    autoFillEnable: true,

                    ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                    textInputAction: TextInputAction.done,

                    ///in case you want to change the action of keyboard
                    /// to clear the Otp pin Controller
                    onSubmit: (newCode) {
                      FocusScope.of(context).requestFocus(FocusNode());

                      /// return the entered pin
                    },
                    onChange: (newCode) {
                      /// return the entered pin
                    },
                    onCodeChanged: (newCode) {},

                    /// to decorate your Otp_Pin_Field
                    otpPinFieldStyle: const OtpPinFieldStyle(
                      /// border color for inactive/unfocused Otp_Pin_Field
                      defaultFieldBorderColor: Colors.transparent,

                      /// border color for active/focused Otp_Pin_Field
                      activeFieldBorderColor: Colors.transparent,

                      /// Background Color for inactive/unfocused Otp_Pin_Field
                      defaultFieldBackgroundColor: Colors.white,

                      /// Background Color for active/focused Otp_Pin_Field
                      activeFieldBackgroundColor: Colors.white,

                      /// Background Color for filled field pin box
                      filledFieldBackgroundColor: Colors.green,

                      /// border Color for filled field pin box
                      filledFieldBorderColor: Colors.green,
                    ),
                    maxLength: 4,

                    /// no of pin field
                    showCursor: true,

                    /// bool to show cursor in pin field or not
                    cursorColor: Colors.indigo,

                    /// to choose cursor color
                    upperChild:  Column(
                      children: [
                        SizedBox(height: 30),
                        Icon(Icons.flutter_dash_outlined, size: 150),
                        SizedBox(height: 20),
                      ],
                    ),
                    showCustomKeyboard: false,

                    ///bool which manage to show custom keyboard
                    // customKeyboard: Container(),
                    /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                    showDefaultKeyboard: true,

                    ///bool which manage to show default OS keyboard
                    cursorWidth: 3,

                    /// to select cursor width
                    mainAxisAlignment: MainAxisAlignment.center,

                    /// place otp pin field according to yourself

                    /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                    ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                    otpPinFieldDecoration:
                        OtpPinFieldDecoration.defaultPinBoxDecoration),
              ),

              const SizedBox(
                height: 30,
              ),

              RoundButton(
                title: "Next",
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusScopeNode());
                },
              ),

              // You had the "Next" button and onPressed code duplicated, I removed the duplicate

              TextButton(
                onPressed: () {
                  // Add your logic for resending the OTP here
                  // serviceCallForgotRequest({"email": widget.email});
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't Received? ",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Click Here",
                      style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
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
