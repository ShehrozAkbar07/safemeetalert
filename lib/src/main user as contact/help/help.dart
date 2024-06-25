import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/widgets/app_bar2.dart';
import '../../../common/widgets/text_field.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../home/background_image.dart';
import '../notification/notification.dart';
import '../profile/profile.dart';

class Help extends StatefulWidget {
  final bool isMainUserAsContact;
    final bool isenterpriseUser;


  const Help({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                              title: 'Help & Support',
                              notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                              isMainUserAsContact: widget.isMainUserAsContact,
                              pro_Container: false, isenterpriseUser: widget.isenterpriseUser
                            ),
                            // Appbar2(
                            //   loacation: const Profile(),
                            //   title: "Help & Support",
                            //   ContainerColor: const Color(0xffd66855),
                            //   IconColor:
                            //       const Color.fromARGB(255, 255, 255, 255),
                            // ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Let's Connect",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
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
                                text: "Enter subject",
                                controller: TextEditingController()),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            CustomTextField(
                                text: "Message Details",
                                maxlines: 10,
                                controller: TextEditingController()),
                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 50),
                              child: SizedBox(
                                height: size.height * 0.08,
                                width: size.width * 0.6,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      primary: Colors.white,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Let's Connect",
                                      style: TextStyle(color: Colors.orange),
                                    )),
                              ),
                            )
                          ])))))
    ]);
  }
}
