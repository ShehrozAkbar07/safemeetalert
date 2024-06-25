import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/auth/security%20pin%20setup/security_pin_setup.dart';
import 'package:safe_meet_alert/src/onboarding/onboarding_view.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/text_field.dart';

class Register extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  // final bool isenterpriseUser;
  const Register({
    Key? key,
    required this.isMainUserAsContact,
    required this.isenterpriseUser,
    // required this.isenterpriseUser
  }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                          child: widget.isMainUserAsContact
                              ? const Text(
                                  "Emergency Contact",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                )
                              : const Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                )), //Welcome back to a secure experience!Welcome back to a secure experience!Welcome back to a secure experience!
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: widget.isMainUserAsContact
                            ? const Text(
                                "Register as an emergency contact",
                                style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            : const Text(
                                "Register for an experience",
                                style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      CustomTextField(
                          text: "Enter full name",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      CustomTextField(
                          text: "Enter email address",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      CustomTextField(
                          text: "Enter phone number",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      CustomTextField(
                          text: "Enter password",
                          controller: TextEditingController()),

                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      CustomButton(
                          text: widget.isMainUserAsContact
                              ? "Register"
                              : "Proceed",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => OnBoardingScreen(
                                          isenterpriseUser:
                                              widget.isenterpriseUser,
                                          isMainUserAsContact:
                                              widget.isMainUserAsContact,
                                        ))));
                          }),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginScreen(
                                    isenterpriseUser:widget.isenterpriseUser,
                                        isMainUserAsContact:
                                            widget.isMainUserAsContact,
                                      ))));
                        },
                        child: Center(
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: const Color(0xffFFFFFF),
                                fontSize: size.height * 0.02),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
