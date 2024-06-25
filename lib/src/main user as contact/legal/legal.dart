import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/widgets/app_bar2.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../home/background_image.dart';
import '../notification/notification.dart';
import '../profile/profile.dart';

class Legal extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const Legal({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<Legal> createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  List<String> text_one = ['Privacy', 'Terms of Services', 'Refund'];
  // List<String> text_two = ['0Hrs', '0Hrs', '0Hrs', '0Hrs'];
  dynamic selected = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MainUserAppBar(
                              isNotification: false,
                              iconvalue: true,
                              title: 'Legal Data',
                              notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                              isMainUserAsContact: widget.isMainUserAsContact,
                              pro_Container: false, isenterpriseUser: widget.isenterpriseUser,
                            ),
                            // Appbar2(
                            //   loacation: Profile,
                            //   title: "Legal Data",
                            //   ContainerColor: const Color(0xffd66855),
                            //   IconColor:
                            //       const Color.fromARGB(255, 255, 255, 255),
                            // ),
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Meet Safe Legal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                // Icon(
                                //   Icons.close,
                                //   size: 30,
                                //   color: Colors.white,
                                // )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.transparent),
                                child: SizedBox(
                                  height: size.height * 0.05,
                                  child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: text_one.length,
                                      itemBuilder: ((context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              print(index);
                                              selected = index;
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Container(
                                                height: 80,
                                                // width: 73,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: selected != null &&
                                                            selected == index
                                                        ? Colors.white
                                                        : Color(0xff808180)),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15),
                                                          child: Text(
                                                            text_one[index],
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: selected !=
                                                                            null &&
                                                                        selected ==
                                                                            index
                                                                    ? Color(
                                                                        0xff808180)
                                                                    : Colors
                                                                        .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        );
                                      })),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Text(
                              selected == 0
                                  ? "Privacy Terms"
                                  : selected == 1
                                      ? "Terms Of Services"
                                      : "Restore Purchase",
                              style: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            const Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  height: 1.4,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            const Text(
                              "Terms Of Services",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            const Text(
                              "It is a long established fact that a reader will be distracted by the ometimes on purpose (injected humour and the like).",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  height: 1.4,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignme,
                                children: [
                                  Container(
                                    height: size.height * 0.09,
                                    width: size.width * 0.10,
                                    decoration: const BoxDecoration(
                                        // color: Colors.blue,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/goole.png'),
                                            fit: BoxFit.contain),
                                        shape: BoxShape.circle),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.facebook,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Container(
                                        height: size.height * 0.09,
                                        width: size.width * 0.11,
                                        decoration: const BoxDecoration(
                                            // color: Colors.blue,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/twitter.png'),
                                                fit: BoxFit.contain),
                                            shape: BoxShape.circle),
                                      )),
                                ],
                              ),
                            )
                          ])))))
    ]);
  }
}
