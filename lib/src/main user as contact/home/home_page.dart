import 'package:flutter/material.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_and_shared.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/notification/notification.dart';

import '../../main user/appbar/main_user_appbar.dart';
import '../HOme/alert_history_container.dart';
import '../HOme/background_image.dart';
import '../HOme/image_detail_container.dart';
import '../HOme/statistics_container.dart';
import '../home/image_container.dart';
import '../home2/home2_image_detail_container.dart';
import '../home2/statistics_row.dart';

class Home extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  const Home(
      {super.key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        isenterpriseUser: widget.isenterpriseUser,
                        isNotification: false,
                        iconvalue: false,
                        title: 'safemeet alert',
                        notification_container_location: Notifications(
                          isMainUserAsContact: widget.isMainUserAsContact,
                          isenterpriseUser: widget.isenterpriseUser,
                        ),
                        isMainUserAsContact: widget.isMainUserAsContact,
                        pro_Container: true,
                      )),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: ImageContainer(), //
                          ),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: widget.isMainUserAsContact
                                  ? ImageDetailContainer(
                                      isMainUserAsContact:
                                          widget.isMainUserAsContact)
                                  : Home2ImageDetailContainer()),
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
                        Text(
                          "Statistics",
                          style: TextStyle(
                              color: widget.isenterpriseUser
                                  ? Colors.yellow
                                  : widget.isMainUserAsContact
                                      ? Colors.blue
                                      : Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
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
                        widget.isMainUserAsContact
                            ? const StatisticsContainer()
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Alert History",
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
                                              isenterpriseUser:
                                                  widget.isenterpriseUser,
                                              isMainUserAsContact:
                                                  widget.isMainUserAsContact,
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
