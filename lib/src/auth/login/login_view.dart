import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/auth/forgetpassword/forgetpassword_view.dart';
import 'package:safe_meet_alert/src/auth/signup/signup_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/home_page.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/emergency_contects.dart';
import '../../../BottomNavigationBar/bottom_navigation_bar.dart';
import '../../../common/utils/appcolors.dart';
import '../../../common/utils/asset_names.dart';
import '../../../common/utils/dimension.dart';
import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/text_field.dart';
import '../../main user as contact/subscription_plan/subscription_plan.dart';
import '../register screen/register.dart';

class LoginScreen extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  const LoginScreen({Key? key, required this.isMainUserAsContact, required this.isenterpriseUser})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              height: size.height / 1.5,
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
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                      ), //Welcome back to a secure experience!Welcome back to a secure experience!Welcome back to a secure experience!
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Welcome back to a secure experience!",
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      CustomTextField(
                          text: "Enter email address",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      CustomTextField(
                          text: "Enter password",
                          controller: TextEditingController()),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const ForgetPasswordScreen())));
                            },
                            child: Center(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: const Color(0xffFFFFFF),
                                    fontSize: size.height * 0.02),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      CustomButton(
                          text: "Login",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar(
                                      isenterpriseUser: widget.isenterpriseUser,
                                          isMainUserAsContact:
                                              widget.isMainUserAsContact,
                                        )));
                          }),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Register(
                                    isenterpriseUser: widget.isenterpriseUser,
                                        isMainUserAsContact:
                                            widget.isMainUserAsContact,
                                      ))));
                        },
                        child: Center(
                          child: Text(
                            "No account yet?",
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
