import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_and_shared.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/hosted_meetings.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/in_progress.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/emergency_contects.dart';
import 'package:safe_meet_alert/src/main%20user/meeting%20code/meeting_code.dart';
import 'package:safe_meet_alert/src/main%20user/meeting%20code/pin_code_bar.dart';

import '../../../Emergency_contacts/emergency_contacts.dart';
import '../audio_recordings/audio_recordings.dart';
import '../contact_and_overview/contact_and_overview1.dart';
import '../home/background_image.dart';
import '../legal/legal.dart';
import '../meetinglocation/meeting_location.dart';
import '../subscription_plan/subscription_plan.dart';

class Emergency extends StatefulWidget {
  final bool isMainUserAsContact;

  const Emergency({super.key, required this.isMainUserAsContact});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
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
                    height: size.height * 0.7,
                    // color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Meeting Chris",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: size.width * 0.3,
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
                                              backgroundColor:
                                                  Color(0xff878e89),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              content:
                                                  Builder(builder: (context) {
                                                var height =
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height;
                                                var width =
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width;

                                                return Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: Container(
                                                    width: double.infinity,

                                                    // margin: EdgeInsets.symmetric(horizontal: 10),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            20),
                                                                child: Text(
                                                                  "Meeting Time Over",
                                                                  style: TextStyle(
                                                                      height:
                                                                          1.5,
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          17,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 15,
                                                                        right:
                                                                            10),
                                                                child: Icon(
                                                                  Icons.close,
                                                                  size: 20,
                                                                  color: Colors
                                                                      .white,
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
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10),
                                                            child: Container(
                                                              height:
                                                                  size.height *
                                                                      0.02,
                                                              width:
                                                                  size.width *
                                                                      0.3,
                                                              child: Divider(
                                                                thickness: 1,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                    0.03,
                                                          ),

                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 15),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                SizedBox(
                                                                  height:
                                                                      size.height *
                                                                          0.047,
                                                                  width:
                                                                      size.width *
                                                                          0.29,
                                                                  child: ElevatedButton(
                                                                      style: ElevatedButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                                                      onPressed: () {
                                                                        showDialog(
                                                                            context:
                                                                                context,
                                                                            barrierDismissible:
                                                                                false,
                                                                            builder:
                                                                                (BuildContext context) {
                                                                              return Padding(
                                                                                padding: const EdgeInsets.only(left: 20, right: 20),
                                                                                child: AlertDialog(
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  contentPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Color(0xff878e89),
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                                  content: Builder(builder: (context) {
                                                                                    var height = MediaQuery.of(context).size.height;
                                                                                    var width = MediaQuery.of(context).size.width;

                                                                                    return Padding(
                                                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                                      child: Container(
                                                                                        width: double.infinity,

                                                                                        // margin: EdgeInsets.symmetric(horizontal: 10),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: <Widget>[
                                                                                              SizedBox(
                                                                                                height: size.height * 0.02,
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: Container(
                                                                                                  height: size.height * 0.06,
                                                                                                  width: size.width * 1.5,
                                                                                                  decoration: const BoxDecoration(
                                                                                                      // color: Colors.black,
                                                                                                      shape: BoxShape.circle,
                                                                                                      image: DecorationImage(image: AssetImage('assets/images/check.png'), fit: BoxFit.contain)),
                                                                                                ),
                                                                                              ),
                                                                                              const Padding(
                                                                                                padding: EdgeInsets.only(top: 10),
                                                                                                child: Align(
                                                                                                  alignment: Alignment.center,
                                                                                                  child: Text(
                                                                                                    "Increment Sucessfull",
                                                                                                    style: TextStyle(height: 1.5, color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                                                                                                  ),
                                                                                                ),
                                                                                              ),

                                                                                              // SizedBox(
                                                                                              //   height: size.height * 0.1,
                                                                                              // ),
                                                                                              const Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: Text(
                                                                                                  "15 minutes added to live meeting",
                                                                                                  style: TextStyle(height: 2, color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: size.height * 0.02,
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: SizedBox(
                                                                                                  height: size.height * 0.047,
                                                                                                  width: size.width * 0.34,
                                                                                                  child: ElevatedButton(
                                                                                                      style: ElevatedButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                                                                                      onPressed: () {
                                                                                                        Navigator.push(
                                                                                                            context,
                                                                                                            MaterialPageRoute(
                                                                                                                builder: ((context) => HostedAndShared(
                                                                                                                  isenterpriseUser: false,
                                                                                                                      isMainUserAsContact: false,
                                                                                                                    ))));
                                                                                                      },
                                                                                                      child: const Text(
                                                                                                        "Go to Meetings",
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 13,
                                                                                                          color: Colors.orange,
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
                                                                        // s
                                                                      },
                                                                      child: const Text(
                                                                        "Add 15 mins",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.orange,
                                                                        ),
                                                                      )),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      size.height *
                                                                          0.047,
                                                                  width:
                                                                      size.width *
                                                                          0.3,
                                                                  child: ElevatedButton(
                                                                      style: ElevatedButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                                                      onPressed: () {
                                                                        // Navigator.push(
                                                                        //     context,
                                                                        //     MaterialPageRoute(
                                                                        //       builder: (context) => MeetingCode(),
                                                                        //     ));
                                                                      },
                                                                      child: const Text(
                                                                        "End Meeting",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.orange,
                                                                        ),
                                                                      )),
                                                                ),
                                                              ],
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
                                    //
                                  },
                                  child: widget.isMainUserAsContact
                                      ? const Text(
                                          "End Meeting",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      : SizedBox.shrink()),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * 0.010,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('assets/images/man.jpg'),
                                ),
                              ),
                              Container(
                                width: size.width * 0.52,
                                // color: Colors.grey,
                                child: const Text(
                                  "Thomas Gold",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const Text(
                                "Meeting with Chris Holmes",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  height: 1.5,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.08,
                              ),
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.6,
                                // color: Colors.blue,
                                child: Row(
                                  children: const [
                                    Text(
                                      "00:25",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.transparent,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 28,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 14, left: 5),
                                      child: Text(
                                        "Remaining",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.transparent,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MeetingLocation()));
                                        },
                                        child: Container(
                                          height: size.height * 0.28,
                                          width: size.width * 0.45,
                                          decoration: BoxDecoration(
                                              // color: Colors.black,
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/map.PNG'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ContactAndOverview1(
                                                          isMainUserAsContact:
                                                              widget
                                                                  .isMainUserAsContact)));
                                        },
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey),
                                            child: const Center(
                                                child: Icon(
                                              Icons.info_outline,
                                              color: Colors.white,
                                              size: 24,
                                            ))),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.04,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AudioRecordings()));
                                        },
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey),
                                            child: const Center(
                                                child: Icon(
                                              Icons.mic_none_outlined,
                                              color: Colors.white,
                                              size: 24,
                                            ))),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      // InkWell(
                                      //   onTap: () {
                                      //     Navigator.push(
                                      //         context,
                                      //         MaterialPageRoute(
                                      //             builder: (context) =>
                                      //                 emergency_contacts()));
                                      //   },
                                      //   child: Container(
                                      //       height: size.height * 0.06,
                                      //       width: size.width * 0.12,
                                      //       decoration: const BoxDecoration(
                                      //           shape: BoxShape.circle,
                                      //           color: Colors.grey),
                                      //       child: const Center(
                                      //           child: Icon(
                                      //         Icons.person_outline_sharp,
                                      //         color: Colors.white,
                                      //         size: 24,
                                      //       ))),
                                      // ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MeetingLocation()));
                                        },
                                        child: Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.12,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey),
                                            child: const Center(
                                                child: Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              size: 24,
                                            ))),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                      color: Color(0xff858e89),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14))),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 20),
                            child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.12,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: const Center(
                                    child: Icon(
                                  Icons.warning_amber,
                                  color: Colors.red,
                                  size: 24,
                                ))),
                          ),
                          // SizedBox(
                          //   width: size.width * 0.01,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2, top: 20),
                            child: Column(
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
                                InkWell(
                                  child: Container(
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 125, 123, 123),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                              width: size.width * 0.34,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Contact 911",
                                    style: TextStyle(color: Colors.orange),
                                  )),
                            ),
                            SizedBox(
                              width: size.width * 0.06,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            emergency_contacts()));
                              },
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Color(0xffEB5F41),
                                    // image: const DecorationImage(
                                    //     image: AssetImage('assets/images/map.PNG'),
                                    //     fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ]),
          ))))
    ]);
  }
}
