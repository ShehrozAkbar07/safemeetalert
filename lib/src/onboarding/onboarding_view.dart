import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safe_meet_alert/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:safe_meet_alert/common/utils/dimension.dart';
import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/home_page.dart';

import '../../common/utils/carousel.dart';
import '../../common/widgets/custom_button.dart';
import '../../dummy.dart';

class OnBoardingScreen extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const OnBoardingScreen(
      {Key? key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser})
      : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int numPages = 3;
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == currentPage ? indicator(true) : indicator(false));
    }
    return list;
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? Dimens.width6 : Dimens.width2,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(Dimens.width1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/shadow_image.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              height: Dimens.height / 1.35,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                children: [
                  Stack(
                    children: [
                      Positioned(
                          top: size.height * 0.15,
                          // left: size.width * 0.1,
                          // right: size.width*0.1,
                          child: SizedBox(
                              height: 400,
                              width: 380,
                              child: ComplicatedImageDemo())),
                      // ClipPath(
                      //   clipper: CustomShapeClipper(),
                      //   child: SizedBox(
                      //     height: MediaQuery.of(context).size.height / 1.5,
                      //     child: Padding(
                      //       padding: const EdgeInsets.only(bottom: 140),
                      //       child: Image.asset(
                      //         "assets/images/onboarding1.png",
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          // color: Colors.blue,
                          height: Dimens.height / 4.8,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              SizedBox(
                                height: Dimens.height2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: const Center(
                                  child: Text(
                                    "Safe & secure meeting assured",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Dimens.height1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: buildPageIndicator(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.45,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: const [
                                  Text(
                                    "Safe Meet Alert",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Never Leave Home Alone",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Positioned(
                      //     top: 200,
                      //     child:
                      //   ),
                      // ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: size.height * 0.15,
                          // left: size.width * 0.1,
                          // right: size.width*0.1,
                          child: SizedBox(
                              height: 400,
                              width: 380,
                              child: ComplicatedImageDemo())),
                      // ClipPath(
                      //   clipper: CustomShapeClipper(),
                      //   child: SizedBox(
                      //     height: MediaQuery.of(context).size.height / 1.5,
                      //     child: Padding(
                      //       padding: const EdgeInsets.only(bottom: 140),
                      //       child: Image.asset(
                      //         "assets/images/onboarding1.png",
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          // color: Colors.blue,
                          height: Dimens.height / 4.8,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              SizedBox(
                                height: Dimens.height2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: const Center(
                                  child: Text(
                                    "Safe & secure meeting assured",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Dimens.height1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: buildPageIndicator(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.45,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: const [
                                  Text(
                                    "Safe Meet Alert",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Never Leave Home Alone",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: Positioned(
                      //     top: 200,
                      //     child:
                      //   ),
                      // ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: size.height * 0.15,
                          // left: size.width * 0.1,
                          // right: size.width*0.1,
                          child: SizedBox(
                              height: 400,
                              width: 380,
                              child: ComplicatedImageDemo())),
                      // ClipPath(
                      //   clipper: CustomShapeClipper(),
                      //   child: SizedBox(
                      //     height: MediaQuery.of(context).size.height / 1.5,
                      //     child: Padding(
                      //       padding: const EdgeInsets.only(bottom: 140),
                      //       child: Image.asset(
                      //         "assets/images/onboarding1.png",
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          // color: Colors.blue,
                          height: Dimens.height / 4.8,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              SizedBox(
                                height: Dimens.height2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: const Center(
                                  child: Text(
                                    "Safe & secure meeting assured",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Dimens.height1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: buildPageIndicator(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.45,
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: const [
                                  Text(
                                    "Safe Meet Alert",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Never Leave Home Alone",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimens.height2,
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: Dimens.width6),
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: CustomButton(
            //         text: "Next",
            //         onPressed: () {
            //           if (currentPage != 2) {
            //             pageController.nextPage(
            //               duration: const Duration(milliseconds: 500),
            //               curve: Curves.ease,
            //             );
            //           } else {
            //             // Navigator.pushReplacement(
            //             //     context,
            //             //     MaterialPageRoute(
            //             //       builder: ((context) => const LoginScreen()),
            //             //     ));
            //           }
            //         }),
            //   ),
            // ),
            SizedBox(
              height: Dimens.height10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => BottomNavBar(
                                  isMainUserAsContact:
                                      widget.isMainUserAsContact,
                                  isenterpriseUser: widget.isenterpriseUser,
                                )),
                          ));
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (currentPage != 2) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => BottomNavBar(
                                          isMainUserAsContact:
                                              widget.isMainUserAsContact,
                                          isenterpriseUser:
                                              widget.isenterpriseUser,
                                        ))));
                          }
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),

            // SizedBox(
            //   height: Dimens.height2,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: Dimens.width6),
            //   child: SizedBox(
            //     height: 55,
            //     width: double.infinity,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         // Navigator.pushReplacement(
            //         //     context,
            //         //     MaterialPageRoute(
            //         //       builder: ((context) => const LoginScreen()),
            //         //     ));
            //       },
            //       style: ButtonStyle(
            //           elevation: MaterialStateProperty.all(0),
            //           backgroundColor: MaterialStateProperty.all(
            //             const Color(0xffffe0d8),
            //           ),
            //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(16)))),
            //       child: const Text(
            //         "Skip",
            //         style: TextStyle(color: Color(0xffF58216)),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 475.0);

    var secondCP = Offset(size.width / 1.15, size.height);
    var secondEP = Offset(size.width, size.height - 200.0);
    path.quadraticBezierTo(secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
