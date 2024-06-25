import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/Subscrption/subscription1.dart';

import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/help/help.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home2/home2.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/permissions/permission.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/profile/personal_details.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscription_plan.dart';

import '../../../common/appbar.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../home/background_image.dart';
import '../legal/legal.dart';
import '../notification/notification.dart';
import '../personal_details/personal_detail.dart';

class Profile extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const Profile(
      {super.key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    height: size.height * 0.23,
                    // color: Colors.yellow,
                    child: Column(
                      children: [
                        MainUserAppBar(
                          isenterpriseUser: widget.isenterpriseUser,
                          isMainUserAsContact: widget.isMainUserAsContact,
                          iconvalue: false,
                          title: 'safemeetalert',
                          notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                          isNotification: false,
                          pro_Container: true,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(
                              //   width: size.width * 0.01,
                              // ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.52,
                                    // color: Colors.grey,
                                    child: const Text(
                                      "Ryanna Moris",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.010,
                                  ),
                                  widget.isMainUserAsContact
                                      ? Container(
                                          width: size.width * 0.52,
                                          // color: Colors.grey,
                                          child: const Text(
                                            "Emergency Contact Account",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      : SizedBox.shrink(),
                                  Text(
                                    widget.isMainUserAsContact
                                        ? "Upgrade to premium"
                                        : "Premium Account",
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              const CircleAvatar(
                                radius: 40,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/images/man.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                height: size.height * 0.08,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.mode_night_outlined,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.ios_share_rounded,
                        color: Colors.white,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeUpgrade(
                                    isenterpriseUser: widget.isenterpriseUser,
                                        isMainUserAsContact:
                                            widget.isMainUserAsContact,
                                      )));
                        },
                        child: const Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Subscription1(
                                          isMainUserAsContact:
                                              widget.isMainUserAsContact,
                                          isenterpriseUser:
                                              widget.isenterpriseUser,
                                        )));
                          },
                          child: widget.isMainUserAsContact
                              ? SizedBox.shrink()
                              : const Icon(
                                  Icons.credit_card,
                                  color: Colors.white,
                                )),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => PersonalDetails(
                                isenterpriseUser: widget.isenterpriseUser,
                                isMainUserAsContact: widget.isMainUserAsContact,
                              ))));
                },
                child: PersonalDetailWidget(
                  icon: Icons.person_outline_rounded,
                  textdata: "Person Detail",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Permissions(
                                isenterpriseUser: widget.isenterpriseUser,
                                isMainUserAsContact: widget.isMainUserAsContact,
                              ))));
                },
                child: PersonalDetailWidget(
                  icon: Icons.lock_outline,
                  textdata: "Permission",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Help(
                            isenterpriseUser: widget.isenterpriseUser,
                                isMainUserAsContact: widget.isMainUserAsContact,
                              ))));
                },
                child: PersonalDetailWidget(
                  icon: Icons.help_outline,
                  textdata: "Help",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Legal(
                                  isenterpriseUser: widget.isenterpriseUser,
                                isMainUserAsContact: widget.isMainUserAsContact,
                              ))));
                },
                child: PersonalDetailWidget(
                  icon: Icons.info_outline,
                  textdata: "Legal",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LoginScreen(
                              isMainUserAsContact: false,
                              isenterpriseUser: widget.isenterpriseUser))));
                },
                child: PersonalDetailWidget(
                  icon: Icons.login,
                  textdata: "Sign Out",
                ),
              ),
            ]),
          ))))
    ]);
  }
}
