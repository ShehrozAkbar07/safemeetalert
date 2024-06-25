import 'package:flutter/material.dart';

import '../../../common/widgets/app_bar2.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../home/background_image.dart';
import '../notification/notification.dart';
import '../profile/profile.dart';
import 'chip_widget.dart';

class Permissions extends StatefulWidget {
  final bool isMainUserAsContact;
    final bool isenterpriseUser;


  const Permissions({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<Permissions> createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
  bool _switchValue = false;
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainUserAppBar(
                      isNotification: false,
                      iconvalue: true,
                      title: 'Permissions',
                      notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                      isMainUserAsContact: widget.isMainUserAsContact,
                      pro_Container: false, isenterpriseUser: widget.isenterpriseUser,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      "System Access",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const ChipWidget(
                      icon: Icons.location_on_outlined,
                      textdata: 'Location Access',
                      isTrue: false,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ChipWidget(
                      icon: Icons.gps_fixed_sharp,
                      textdata: 'GPS Access',
                      isTrue: true,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ChipWidget(
                      icon: Icons.person_add,
                      textdata: 'Date & Network  Access',
                      isTrue: true,
                    )
                  ]),
            ),
          ))))
    ]);
  }
}
