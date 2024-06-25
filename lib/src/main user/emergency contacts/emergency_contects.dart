import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/help/help.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/notification/notification.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/permissions/permission.dart';
import 'package:safe_meet_alert/src/main%20user/appbar/main_user_appbar.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/search_bar.dart';

import '../../../common/appbar.dart';
import '../../main user as contact/HOme/background_image.dart';
import '../../main user as contact/legal/legal.dart';
import '../../main user as contact/personal_details/personal_detail.dart';
import 'emergency_contact_widgets.dart';

class EmergencyContact extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const EmergencyContact(
      {super.key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
  TextEditingController controller = TextEditingController();
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainUserAppBar(
                      title: "safemeetalert",
                      isNotification: false,
                      iconvalue: false,
                      notification_container_location: Notifications(
                        isMainUserAsContact: widget.isMainUserAsContact,
                        isenterpriseUser: widget.isenterpriseUser,
                      ),
                      isMainUserAsContact: widget.isMainUserAsContact,
                      pro_Container: true, isenterpriseUser: widget.isenterpriseUser,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SearchBar(
                      controller: controller,
                      text: "Search Emergency Contacts",
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      'Meeting Emergency Contacts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Min. 3 default contacts required to start meeting. Max 5 allowed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          height: 2,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffc67766),
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffc67766),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  "Enter Name",
                                  style: TextStyle(
                                      height: 2,
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffc67766),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  "Enter Email Address",
                                  style: TextStyle(
                                      height: 2,
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  Text(
                                    'Send Invite',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        height: 1,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    EmergenctContactWidgets(
                      textdata: 'Ronal Marrison',
                      icon: Icons.person_outline_outlined,
                    ),
                    const EmergencyContainerStarWidget(
                      textdataa: 'Alison Murray',
                    ),
                    EmergenctContactWidgets(
                      textdata: 'Sanford Long',
                      icon: Icons.person_outline_outlined,
                    ),
                    const EmergencyContainerStarWidget(
                      textdataa: 'Phillip Morris',
                    ),
                    const EmergencyContainerStarWidget(
                      textdataa: 'Susan Roots',
                    ),
                    const EmergencyContainerStarWidget(
                      textdataa: 'Daniel Kennedy',
                    ),
                  ],
                ),
              ),
            ]),
          ))))
    ]);
  }
}
