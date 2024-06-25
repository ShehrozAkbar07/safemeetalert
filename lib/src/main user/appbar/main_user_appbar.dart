import 'package:flutter/material.dart';

import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/shared%20meetings/add_meeting_container.dart';

import '../../../BottomNavigationBar/bottom_navigation_bar.dart';
import '../../main user as contact/home/home_page.dart';
import '../../main user as contact/notification/notification.dart';

class MainUserAppBar extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  final bool pro_Container;

  bool iconvalue;
  bool? isNotification;
  String title;
  dynamic notification_container_location;
  MainUserAppBar({
    required this.title,
    required this.iconvalue,
    this.notification_container_location,
    super.key,
    required this.isMainUserAsContact,
    required this.isNotification,
    required this.pro_Container,
    required this.isenterpriseUser,
  });

  @override
  State<MainUserAppBar> createState() => _MainUserAppBarState();
}

class _MainUserAppBarState extends State<MainUserAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            widget.iconvalue
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: ((context) => widget.location)));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  )
                : SizedBox.shrink(),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            widget.pro_Container
                ? Container(
                    height: size.height * 0.02,
                    width: size.width * 0.1,
                    color: widget.isenterpriseUser
                        ? Colors.yellow
                        : widget.isMainUserAsContact
                            ? Colors.blue
                            : Colors.green,
                    child: Center(
                      child: Text(
                        widget.isenterpriseUser
                            ? "Paid"
                            : widget.isMainUserAsContact
                                ? "Free"
                                : "Pro",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ))
                : SizedBox.shrink()
          ],
        ),
        Container(
          width: size.width * 0.16,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {},
                  child: widget.isMainUserAsContact == false
                      ? Container(
                          height: size.height * 0.07,
                          width: size.width * 0.07,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: Center(
                              child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  constraints: BoxConstraints(
                                      maxHeight: 1000, minHeight: 900),
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  // shape: const RoundedRectangleBorder(

                                  //   borderRadius: BorderRadius.only(
                                  //       topLeft: Radius.circular(18.0),
                                  //       topRight: Radius.circular(18.0)),
                                  // ),
                                  builder: (context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff858e89),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      margin: EdgeInsets.only(top: 100),
                                      height: size.height * 2,
                                      child: StatefulBuilder(
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // mainAxisSize: MainAxisSize.min,
                                              children: [
                                                //  const    Align(
                                                //       alignment: Alignment.topRight,
                                                //       child: const Icon(
                                                //         Icons.close,
                                                //         size: 30,
                                                //         color: Colors.white,
                                                //       ),
                                                //     ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10, right: 10),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Icon(
                                                      Icons.close,
                                                      size: 30,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),

                                                // ),
                                                // Align(
                                                //   alignment: Alignment.center,
                                                //   child: Container(
                                                //     height: size.height * 0.13,
                                                //     width: size.width * 0.7,
                                                //     decoration: const BoxDecoration(
                                                //         // color: Colors.black,
                                                //         shape: BoxShape.circle,
                                                //         image: DecorationImage(
                                                //             image: AssetImage(
                                                //                 'assets/images/check.png'),
                                                //             fit: BoxFit.contain)),
                                                //   ),
                                                // ),
                                                const Text(
                                                  "Create Meeting",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 23,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),

                                                // SizedBox(
                                                //   height: size.height * 0.1,
                                                // ),
                                                const Text(
                                                  "Check Subscription Status in account",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                ),
                                                Container(
                                                  height: size.height * 0.06,
                                                  // color: Colors.blue,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Meeting Contact",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Container(
                                                        height:
                                                            size.height * 0.02,
                                                        width: size.width * 0.5,
                                                        child: Divider(
                                                          color: Colors.grey,
                                                          thickness: 1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),

                                                AddMeetingContainer(),

                                                Container(
                                                  height: size.height * 0.06,
                                                  // color: Colors.blue,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Meeting Details",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Container(
                                                        height:
                                                            size.height * 0.02,
                                                        width: size.width * 0.5,
                                                        child: Divider(
                                                          color: Colors.grey,
                                                          thickness: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: size.height * 0.06,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff959996),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Row(children: [
                                                    const Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.white,
                                                        size: 22,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.06,
                                                    ),
                                                    const Text(
                                                      "Enter My Location",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.01,
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: size.height * 0.06,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff959996),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Row(children: [
                                                    const Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Icon(
                                                        Icons.watch,
                                                        color: Colors.white,
                                                        size: 22,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.06,
                                                    ),
                                                    const Text(
                                                      "Enter Meeting Duration",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.01,
                                                ),
                                                Container(
                                                  height: size.height * 0.14,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0xff959996),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10,
                                                                    top: 10),
                                                            child: Icon(
                                                              Icons
                                                                  .person_outline_rounded,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10,
                                                                left: 10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Enter Meeting Duration",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                            Text(
                                                              "Minimun 3 required.Please hold to remove a contact",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 9,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            ),
                                                            SizedBox(
                                                                height:
                                                                    size.height *
                                                                        0.02),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  radius: 16.0,
                                                                  backgroundImage:
                                                                      AssetImage(
                                                                          'assets/images/man.jpg'),
                                                                ),
                                                                SizedBox(
                                                                  width:
                                                                      size.width *
                                                                          0.01,
                                                                ),
                                                                const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  radius: 16.0,
                                                                  backgroundImage:
                                                                      AssetImage(
                                                                          'assets/images/man.jpg'),
                                                                ),
                                                                SizedBox(
                                                                  width:
                                                                      size.width *
                                                                          0.01,
                                                                ),
                                                                CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  radius: 16.0,
                                                                  backgroundImage:
                                                                      AssetImage(
                                                                          'assets/images/man.jpg'),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                // ),

                                                // SizedBox(
                                                //   height: size.height * 0.1,

                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 60, top: 22),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      Home(
                                                                        isMainUserAsContact:
                                                                            widget.isMainUserAsContact,
                                                                        isenterpriseUser:
                                                                            true,
                                                                      ))));
                                                    },
                                                    child: SizedBox(
                                                      height:
                                                          size.height * 0.06,
                                                      width: size.width * 0.5,
                                                      child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              primary:
                                                                  Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10))),
                                                          onPressed: () {
                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Color(
                                                                        0xff858e89),
                                                                shape:
                                                                    const RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              18.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              18.0)),
                                                                ),
                                                                builder:
                                                                    (context) {
                                                                  return StatefulBuilder(
                                                                    builder: (BuildContext
                                                                            context,
                                                                        StateSetter
                                                                            setState) {
                                                                      return Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(horizontal: 20),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          // mainAxisSize: MainAxisSize.min,
                                                                          children: [
                                                                            // const Icon(
                                                                            //   Icons.close,
                                                                            //   size: 30,
                                                                            //   color: Colors.white,
                                                                            SizedBox(
                                                                              height: size.height * 0.1,
                                                                            ),
                                                                            // ),
                                                                            Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(
                                                                                height: size.height * 0.13,
                                                                                width: size.width * 0.7,
                                                                                decoration: const BoxDecoration(
                                                                                    // color: Colors.black,
                                                                                    shape: BoxShape.circle,
                                                                                    image: DecorationImage(image: AssetImage('assets/images/check.png'), fit: BoxFit.contain)),
                                                                              ),
                                                                            ),
                                                                            const Padding(
                                                                              padding: EdgeInsets.only(top: 15),
                                                                              child: Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text(
                                                                                  "Create Sucessfully",
                                                                                  style: TextStyle(height: 1.5, color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                            ),

                                                                            // SizedBox(
                                                                            //   height: size.height * 0.1,
                                                                            // ),
                                                                            const Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text(
                                                                                "The meeting contact will be",
                                                                                style: TextStyle(height: 2, color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              ),
                                                                            ),
                                                                            const Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text(
                                                                                "alerted in case of emergency.Check",
                                                                                style: TextStyle(height: 1.5, color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              ),
                                                                            ),
                                                                            const Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text(
                                                                                "meeting status 'in Progress'tab",
                                                                                style: TextStyle(height: 1.5, color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 30, bottom: 30, top: 35),
                                                                              child: InkWell(
                                                                                onTap: () {
                                                                                  Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                          builder: ((context) => Home(
                                                                                                isenterpriseUser: true,
                                                                                                isMainUserAsContact: widget.isMainUserAsContact,
                                                                                              ))));
                                                                                },
                                                                                child: SizedBox(
                                                                                  height: size.height * 0.07,
                                                                                  width: size.width * 0.7,
                                                                                  child: ElevatedButton(
                                                                                      style: ElevatedButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                                      onPressed: () {
                                                                                        print("h");
                                                                                        Navigator.push(
                                                                                            context,
                                                                                            MaterialPageRoute(
                                                                                                builder: (context) => BottomNavBar(
                                                                                                      isMainUserAsContact: widget.isMainUserAsContact,
                                                                                                      isenterpriseUser: false,
                                                                                                    )));
                                                                                      },
                                                                                      child: const Text(
                                                                                        "Go to Meetings",
                                                                                        style: TextStyle(
                                                                                          fontSize: 20,
                                                                                          color: Colors.orange,
                                                                                        ),
                                                                                      )),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                });

                                                            // print("h");
                                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
                                                          },
                                                          child: const Text(
                                                            "Create",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.orange,
                                                            ),
                                                          )),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          )))
                      : SizedBox.shrink()),
              Container(
                  height: size.height * 0.07,
                  width: size.width * 0.07,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          widget.isNotification! ? Colors.white : Colors.red),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  widget.notification_container_location)); //
                    },
                    child: Icon(
                      Icons.notifications,
                      color: widget.isNotification! ? Colors.red : Colors.white,
                      size: 20,
                    ),
                  ))),
            ],
          ),
        ),
      ],
    );
  }
}

// Color(0xffd66855)