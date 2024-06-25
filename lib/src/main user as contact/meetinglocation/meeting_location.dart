import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/src/main%20user/appbar/main_user_appbar.dart';

import '../../../common/widgets/app_bar2.dart';
import '../home/background_image.dart';

class MeetingLocation extends StatefulWidget {
  const MeetingLocation({super.key});

  @override
  State<MeetingLocation> createState() => _MeetingLocationState();
}

class _MeetingLocationState extends State<MeetingLocation> {
  List<String> text_one = ['Privacy', 'Terms of Services', 'Refund'];
  // List<String> text_two = ['0Hrs', '0Hrs', '0Hrs', '0Hrs'];
  dynamic selected = null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.11),
              child: Container(
                height: size.height * 0.68,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/map.PNG'),
                      fit: BoxFit.cover),

                  // color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: MainUserAppBar(title: "Location Traaking", iconvalue: true, isMainUserAsContact: true, isNotification: false, pro_Container: false, isenterpriseUser: true),
              // child: Appbar2(
              //   title: "Location Tracking",
              //   IconColor: Colors.transparent,
              //   ContainerColor: Colors.transparent,
              // ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.78),
              child: Container(
                  height: size.height * 0.2,
                  decoration: const BoxDecoration(
                      color: Color(0xff858e89),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "2.4 miles Away",
                              style: TextStyle(
                                  // height: 1.5,
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Estimated time 25 minutes",
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "34 Green Blvd Road New Jersy, 07063",
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 10),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.07,
                              width: size.width * 0.2,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                              child: const Center(
                                  child: Icon(
                                Icons.map,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            const Text(
                              "See more on Map",
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ])))
    ]);
  }
}
