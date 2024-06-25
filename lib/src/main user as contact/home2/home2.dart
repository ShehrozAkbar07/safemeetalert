import 'package:flutter/material.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/emergency/emergency.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home2/statistics_row.dart';

import '../../main user/appbar/main_user_appbar.dart';
import '../HOme/alert_history_container.dart';
import '../HOme/background_image.dart';

import '../Hosted_and_Shared/hosted_and_shared.dart';
import '../home/image_container.dart';
import '../notification/notification.dart';
import 'home2_image_detail_container.dart';

class HomeUpgrade extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const HomeUpgrade({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<HomeUpgrade> createState() => _HomeUpgradeState();
}

class _HomeUpgradeState extends State<HomeUpgrade> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: MainUserAppBar(
                      isNotification: false,
                      iconvalue: false,
                      title: 'safemeetalert',
                      notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                      isMainUserAsContact: true,
                      pro_Container: true, isenterpriseUser: widget.isenterpriseUser,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.27,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Emergency(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                              )));
                                },
                                child: Home2ImageDetailContainer()),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ImageContainer(),
                          ),
                          // const ImageDetailContainer(),
                          // const ImageDetailContainer(),
                        ],
                      ),
                    ),
                  ),
                  // const ImageDetailContainer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          "Statistics",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            StatisticsRow(
                              number: '12',
                              title: "Hosted Meetings",
                            ),
                            StatisticsRow(
                              number: '5',
                              title: "Completed",
                            ),
                            StatisticsRow(
                              number: '9',
                              title: "Compromised",
                            ),
                            StatisticsRow(
                              number: '3',
                              title: "Total Shared",
                            ),
                          ],
                        ),
                        // Container(
                        //   height: size.height,
                        //   child: SingleChildScrollView(
                        //     child: Row(
                        //       children: [
                        //         StatisticsContainer(),
                        //         StatisticsContainer(),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // StatisticsContainer(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Recent Meetings",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HostedAndShared(
                                              isMainUserAsContact: widget.isMainUserAsContact,
                                              isenterpriseUser: widget.isenterpriseUser,
                                            )));
                              },
                              child: const Text(
                                "See all",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xffEAA799),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const AlertHistoryContainer(),
                        const AlertHistoryContainer(),
                        const AlertHistoryContainer(),
                        const AlertHistoryContainer()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
