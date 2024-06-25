import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/home_page.dart';

import '../../../common/appbar.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../HOme/background_image.dart';
import '../meetings/meetings1.dart';
import '../shared_messages/shared_messages.dart';
import 'contacts_notification.dart';

class Notifications extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  const Notifications(
      {super.key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.other_houses_outlined,
          //         ),
          //         label: ""),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.business,
          //       ),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.location_on_outlined,
          //       ),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.person_outline_rounded,
          //       ),
          //       label: '',
          //     ),
          //   ],
          //   unselectedItemColor: Colors.grey,
          //   selectedItemColor: Colors.grey,
          //   onTap: _onItemTapped,
          // ),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MainUserAppBar(
                                isNotification: true,
                                iconvalue: false,
                                title: 'safemeet alert',
                                notification_container_location: Home(
                                  isMainUserAsContact: true,
                                  isenterpriseUser: true,
                                ),
                                isMainUserAsContact: true,
                                pro_Container: true,
                                isenterpriseUser: widget.isenterpriseUser),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Mark Read",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xffCECECE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            const Text(
                              "Yesterday",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Meetings1(
                                                isMainUserAsContact:
                                                    widget.isMainUserAsContact,
                                                isenterpriseUser:
                                                    widget.isenterpriseUser,
                                              )));
                                },
                                child: Contacts()),
                          ])))))
    ]);
  }
}
