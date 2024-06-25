import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscription_plan.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/text_field.dart';

class SecurityPinSetup extends StatefulWidget {
  const SecurityPinSetup({Key? key}) : super(key: key);

  @override
  State<SecurityPinSetup> createState() => _SecurityPinSetupState();
}

class _SecurityPinSetupState extends State<SecurityPinSetup> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/overlay.png",
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
                // height: size.height,
                // width: size.width,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height / 1.4,
              decoration: const BoxDecoration(
                color: Color(0xff878E89),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.00,
                        ),
                        child: const Text(
                          "Security Pins Setup",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 28),
                        ),
                      ), //Welcome back to a secure experience!Welcome back to a secure experience!Welcome back to a secure experience!
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Set up pins for concluding meetings",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Note: Kindly input pins that are easily to remember as\nthey are crucial for meeting status",
                          style: TextStyle(
                              color: Colors.white,
                              height: 1.2,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      CustomTextField(
                          text: "Enter security pin",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      CustomTextField(
                          text: "Enter distress pin",
                          controller: TextEditingController()),

                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      CustomButton(
                          text: "Proceed",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                       SubscriptionPlan(isMainUserAsContact: true,isenterpriseUser: true,))));
                          }),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: ((context) => const LoginScreen())));
                      //   },
                      //   child: Center(
                      //     child: Text(
                      //       "Already have an account?",
                      //       style: TextStyle(
                      //           decoration: TextDecoration.underline,
                      //           color: const Color(0xffFFFFFF),
                      //           fontSize: size.height * 0.02),
                      //     ),
                      //   ),
                      // ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
