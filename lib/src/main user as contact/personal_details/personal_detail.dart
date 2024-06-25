import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/auth/security%20pin%20setup/security_pin_setup.dart';

import '../../../common/widgets/app_bar2.dart';
import '../../../common/widgets/text_field.dart';
import '../../main user/appbar/main_user_appbar.dart';
import '../HOme/home_page.dart';
import '../home/background_image.dart';
import '../notification/notification.dart';
import '../profile/profile.dart';

class PersonalDetails extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const PersonalDetails({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
                      isenterpriseUser: widget.isenterpriseUser,
                      isNotification: false,
                      iconvalue: true,
                      title: 'safemeet alert',
                      notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact, isenterpriseUser: widget.isenterpriseUser,),
                      isMainUserAsContact: widget.isMainUserAsContact, pro_Container: false,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      "Account Setting",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Stack(children: [
                        Container(
                          width: size.width * 0.25,
                          height: size.height * 0.17,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/man.jpg')),
                              color: Colors.black,
                              shape: BoxShape.circle),
                        ),
                        Positioned(
                          left: 50,
                          top: 60,
                          child: Container(
                            width: size.width * 0.09,
                            height: size.height * 0.09,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                            )),
                          ),
                        ),
                      ]),
                    ),
                    const Text(
                      "Accounts Details",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                        text: "Enter email address",
                        controller: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                        text: "Enter subject",
                        controller: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    CustomTextField(
                        text: "Enter email address",
                        controller: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                        text: "Enter email address",
                        controller: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                        text: "Enter subject",
                        controller: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: AlertDialog(
                                    insetPadding: EdgeInsets.zero,
                                    contentPadding: EdgeInsets.zero,
                                    backgroundColor: Color(0xff878e89),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    content: Builder(builder: (context) {
                                      var height =
                                          MediaQuery.of(context).size.height;
                                      var width =
                                          MediaQuery.of(context).size.width;

                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          width: double.infinity,

                                          // margin: EdgeInsets.symmetric(horizontal: 10),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 20),
                                                      child: Text(
                                                        "Meeting Security Pins",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15,
                                                              right: 10),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Icon(
                                                          Icons.close,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                // SizedBox(
                                                //   height: size.height * 0.1,
                                                // ),
                                                Text(
                                                  "Edit security and distress pins",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Container(
                                                    height: size.height * 0.02,
                                                    width: size.width * 0.3,
                                                    child: Divider(
                                                      thickness: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      "meeting security pins:  ",
                                                      style: TextStyle(
                                                          height: 1.5,
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                    Text(
                                                      "3535",
                                                      style: TextStyle(
                                                          height: 1.5,
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 20),
                                                  child: Row(
                                                    children: const [
                                                      Text(
                                                        "meeting security pins:  ",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                      Text(
                                                        "3535",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            color: Colors.white,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: size.height * 0.047,
                                                    width: size.width * 0.34,
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            primary:
                                                                Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8))),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      ((context) =>
                                                                          const SecurityPinSetup())));
                                                        },
                                                        child: const Text(
                                                          "Save",
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.orange,
                                                          ),
                                                        )),
                                                  ),
                                                ),

                                                SizedBox(height: 20),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              });
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return AlertDialog(
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          //       content: Container(
                          //         height: size.height*0.1,
                          //         width: size.width*1,
                          //         color: Colors.blue,
                          //       ),
                          //     );
                          //   },
                          // );
                        },
                        child: widget.isMainUserAsContact
                            ? SizedBox.shrink()
                            : const Text(
                                "Change meeting security pins",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  height: 1.5,
                                  fontSize: 14,
                                ),
                              )),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 50),
                      child: SizedBox(
                        height: size.height * 0.08,
                        width: size.width * 0.6,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              primary: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Profile(
                                            isMainUserAsContact: false,
                                            isenterpriseUser: false,
                                          ))));
                            },
                            child: const Text(
                              "Update Details",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ]),
            ),
          ),
        ),
      )
    ]);
  }
}
