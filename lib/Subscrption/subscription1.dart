import 'package:flutter/material.dart';
import 'package:safe_meet_alert/Subscrption/boxes_subs.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/common/widgets/app_bar2.dart';
import 'package:safe_meet_alert/common/widgets/appbar5.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/background_image.dart';

import '../src/main user as contact/notification/notification.dart';
import '../src/main user/appbar/main_user_appbar.dart';

class Subscription1 extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  const Subscription1(
      {Key? key,
      required this.isMainUserAsContact,
      required this.isenterpriseUser})
      : super(key: key);

  @override
  _Subscription1State createState() => _Subscription1State();
}

bool value = false;

class _Subscription1State extends State<Subscription1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,

          // appBar: AppBar(
          //   elevation: 0.0,
          //   backgroundColor: Colors.transparent,
          //   toolbarHeight: 80.10, //set your height
          //   flexibleSpace: SafeArea(
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 15),
          //           child: MainUserAppBar(
          //             iconvalue: true,
          //             proContainerColor: Colors.transparent,
          //             proTextColor: Colors.transparent,
          //             title: 'Subscriptions',
          //             add_icon_value: false,
          //             notification_container_location: Notifications(),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MainUserAppBar(
                    iconvalue: true,
                    title: 'Subscriptions',
                    notification_container_location: Notifications(isMainUserAsContact: widget.isMainUserAsContact,isenterpriseUser: widget.isenterpriseUser,),
                    isMainUserAsContact: widget.isMainUserAsContact,
                    isNotification: false,
                    pro_Container: false,
                    isenterpriseUser: widget.isenterpriseUser,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.046,
                ),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.22,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/card.png'),
                          fit: BoxFit.contain),
                      // color: const Color.fromARGB(255, 83, 74, 73),
                      borderRadius: BorderRadius.circular(14)),
                ),
                SizedBox(height: size.height * 0.06),
                Align(
                  // alignment: Alignment.bottomCenter,
                  child: Container(
                    height: size.height * 0.55,
                    decoration: const BoxDecoration(
                      color: Color(0xff878E89),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Subscription History',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'User payment logs',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Color(0xff858e89),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(18.0),
                                              topRight: Radius.circular(18.0)),
                                        ),
                                        builder: (context) {
                                          return StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  // mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    // const Icon(
                                                    //   Icons.close,
                                                    //   size: 30,
                                                    //   color: Colors.white,
                                                    // ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 15),
                                                      child: Text(
                                                        "Update Payment Information",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.03,
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xff858e89),
                                                          border: Border.all(
                                                              width: 2,
                                                              color:
                                                                  Colors.grey),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      height:
                                                          size.height * 0.133,
                                                      child: Column(
                                                        children: [
                                                          TextFormField(
                                                            decoration: const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            5),
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                                hintText:
                                                                    'Username'),
                                                          ),
                                                          TextFormField(
                                                            decoration: const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            5),
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                                hintText:
                                                                    'Zip Code'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          size.height * 0.02,
                                                    ),

                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xff858e89),
                                                          border: Border.all(
                                                              width: 2,
                                                              color:
                                                                  Colors.grey),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      height:
                                                          size.height * 0.1357,
                                                      child: Column(
                                                        children: [
                                                          TextFormField(
                                                            decoration: const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            5),
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                                hintText:
                                                                    'Card Number'),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                    // borderRadius:
                                                                    //     BorderRadius
                                                                    //         .circular(10),
                                                                    color: Color(0xff858e89),
                                                                    border: Border.all(
                                                                        // width: 2,
                                                                        color: Colors.grey)),
                                                                width:
                                                                    size.width *
                                                                        0.5,
                                                                child:
                                                                    TextFormField(
                                                                  decoration: const InputDecoration(
                                                                      contentPadding: EdgeInsets.only(
                                                                          left:
                                                                              5),
                                                                      hintStyle: TextStyle(
                                                                          color: Colors
                                                                              .grey),
                                                                      hintText:
                                                                          'MM//YY'),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                    // borderRadius:
                                                                    //     BorderRadius
                                                                    //         .circular(10),
                                                                    color: Color(0xff858e89),
                                                                    border: Border.all(
                                                                        // width: 2,
                                                                        color: Colors.grey)),
                                                                width:
                                                                    size.width *
                                                                        0.376,
                                                                child:
                                                                    TextFormField(
                                                                  decoration: const InputDecoration(
                                                                      contentPadding: EdgeInsets.only(
                                                                          left:
                                                                              5),
                                                                      hintStyle: TextStyle(
                                                                          color: Colors
                                                                              .grey),
                                                                      hintText:
                                                                          'CVV'),
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    // SizedBox(
                                                    //   height: size.height * 0.1,
                                                    // ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                          activeColor:
                                                              Colors.white,
                                                          side: BorderSide(
                                                              color:
                                                                  Colors.white),
                                                          checkColor:
                                                              Colors.orange,
                                                          value: value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              value = value!;
                                                            });
                                                          },
                                                        ),
                                                        const Text(
                                                          "Save Card for Future Transactions",
                                                          style: TextStyle(
                                                              height: 1.5,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 60,
                                                              bottom: 30,
                                                              top: 10),
                                                      child: SizedBox(
                                                        height:
                                                            size.height * 0.06,
                                                        width: size.width * 0.5,
                                                        child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                primary: Colors
                                                                    .white,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10))),
                                                            onPressed: () {},
                                                            child: const Text(
                                                              "Save Changes",
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .orange,
                                                              ),
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        child: Icon(
                                          Icons.wallet_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        'Edit Method',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                            endIndent: 260,
                          ),
                          BoxesSubs(),
                          Divider(
                            color: Colors.white,
                          ),
                          BoxesSubs(),
                          Divider(
                            color: Colors.white,
                          ),
                          BoxesSubs(),
                          Divider(
                            color: Colors.white,
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

          // Stack(
          //   fit: StackFit.expand,
          //   children: <Widget>[
          //     Image.asset(
          //       "assets/images/overlay.png",
          //       fit: BoxFit.fill,
          //       height: size.height,
          //       width: size.width,
          //     ),
          //     Column(
          //       children: [
          //
          //       ],
          //     )
          //   ],
          // ),
          ),
    ]);
  }
}
