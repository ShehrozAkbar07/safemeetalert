import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/main%20user/appbar/main_user_appbar.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/shared%20meetings/shared_meetings.dart';

import '../notification/notification.dart';
import '../subscription_plan/subscription_plan.dart';
import 'hosted_meetings/hosted_meetings.dart';

class HostedAndShared extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const HostedAndShared(
      {Key? key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser})
      : super(key: key);

  @override
  _HostedAndSharedState createState() => _HostedAndSharedState();
}

class _HostedAndSharedState extends State<HostedAndShared> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: 80.10, //set your height
          flexibleSpace: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MainUserAppBar(
                    isMainUserAsContact: widget.isMainUserAsContact,
                    isNotification: false,
                    iconvalue: false,
                    notification_container_location: Notifications(
                      isMainUserAsContact: widget.isMainUserAsContact,
                      isenterpriseUser: widget.isenterpriseUser,
                    ),
                    title: 'safemeetalert',
                    pro_Container: true,
                    isenterpriseUser: widget.isenterpriseUser,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/images/overlay.png",
              fit: BoxFit.fill,
              height: size.height,
              width: size.width,
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.13,
                ),
                TabBar(
                  // isScrollable: false,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  indicatorColor: Colors.red,
                  indicatorWeight: 3,
                  tabs: [
                    Row(
                      children: [
                        const Tab(
                          child: Text(
                            "Hosted Meetings",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.025,
                        ),
                        Container(
                            height: size.height * 0.07,
                            width: size.width * 0.05,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: const Center(
                                child: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 15,
                            )))
                      ],
                    ),
                    const Tab(
                      child: Text(
                        "Shared Meetings",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                // Expanded(
                //     child: TabBarView(
                //         children: [HostedMeetings(), SharedMeetings()]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
