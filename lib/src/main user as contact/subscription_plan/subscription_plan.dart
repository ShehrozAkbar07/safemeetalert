import 'package:flutter/material.dart';
import 'package:safe_meet_alert/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/legal/legal.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscriptionplan_row.dart';

import '../../../common/widgets/app_bar2.dart';
import '../home/background_image.dart';
import '../home/home_page.dart';

class SubscriptionPlan extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;
  const SubscriptionPlan({super.key, required this.isMainUserAsContact, required this.isenterpriseUser});

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {
  List<String> text_one = ['12 months', '7months'];
  List<String> text_two = ["7 Day free Trial", '0Hrs', '0Hrs', '0Hrs'];
  List<String> text_three = ["59.98", '0Hrs', '0Hrs', '0Hrs'];
  List<String> text_four = ['4.99/month', '0Hrs', '0Hrs', '0Hrs'];

  dynamic selected = null;
  bool _switchValue = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/subback.JPG"),
                fit: BoxFit.cover)),
      ),
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
                    // Appbar2(
                    //   title: "",
                    //   ContainerColor: Colors.transparent,
                    //   IconColor: Colors.transparent,
                    // ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: size.height * 0.14,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            image: const DecorationImage(
                                image: AssetImage('assets/images/logo.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Unlock the Potential Of Premiun",
                        style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        children: [
                          SubscriptionPlanROw(
                            texxt: "Add Upto 6 Emergency Contact",
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          SubscriptionPlanROw(
                            texxt: "Emerygency Meeting Alert",
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          SubscriptionPlanROw(
                            texxt: "Meeting Details",
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          SubscriptionPlanROw(
                            texxt: "Usage Statistics",
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          SubscriptionPlanROw(
                            texxt: "Location & Data Privacy",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                      height: size.height * 0.24,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: text_one.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    print(index);
                                    selected = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.09,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: selected != null &&
                                                  selected == index
                                              ? Colors.orange
                                              : Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  text_one[index],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.009,
                                                ),
                                                Text(
                                                  text_two[index],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  text_three[index],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.009,
                                                ),
                                                Text(
                                                  text_four[index],
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12),
                                                ),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                ));
                          })),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: SizedBox(
                        height: size.height * 0.07,
                        width: size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
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
                                          padding: const EdgeInsets.symmetric(
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
                                                padding:
                                                    EdgeInsets.only(top: 15),
                                                child: Text(
                                                  "Add Payment Information",
                                                  style: TextStyle(
                                                      height: 1.5,
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.03,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xff858e89),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: size.height * 0.1357,
                                                child: Column(
                                                  children: [
                                                    TextFormField(
                                                      decoration:
                                                          const InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              5),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white),
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
                                                              size.width * 0.5,
                                                          child: TextFormField(
                                                            decoration: const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            5),
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .white),
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
                                                          width: size.width *
                                                              0.376,
                                                          child: TextFormField(
                                                            decoration: const InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left:
                                                                            5),
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                                hintText:
                                                                    'CVV'),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),

                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff858e89),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: size.height * 0.133,
                                                child: Column(
                                                  children: [
                                                    TextFormField(
                                                      decoration:
                                                          const InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              5),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                              hintText:
                                                                  'Username'),
                                                    ),
                                                    TextFormField(
                                                      decoration:
                                                          const InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              5),
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                              hintText:
                                                                  'Zip Code'),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // SizedBox(
                                              //   height: size.height * 0.1,
                                              // ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                    activeColor: Colors.white,
                                                    side: BorderSide(
                                                        color: Colors.white),
                                                    checkColor: Colors.orange,
                                                    value: this.value,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.value = value!;
                                                      });
                                                    },
                                                  ),
                                                  const Text(
                                                    "Save Card for Future Transactions",
                                                    style: TextStyle(
                                                        height: 1.5,
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 60,
                                                    bottom: 30,
                                                    top: 10),
                                                child: SizedBox(
                                                  height: size.height * 0.06,
                                                  width: size.width * 0.5,
                                                  child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      onPressed: () {
                                                        showModalBottomSheet(
                                                            context: context,
                                                            backgroundColor:
                                                                Color(
                                                                    0xff858e89),
                                                            shape:
                                                                const RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          18.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          18.0)),
                                                            ),
                                                            builder: (context) {
                                                              return StatefulBuilder(
                                                                builder: (BuildContext
                                                                        context,
                                                                    StateSetter
                                                                        setState) {
                                                                  return Padding(
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      // mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        // const Icon(
                                                                        //   Icons.close,
                                                                        //   size: 30,
                                                                        //   color: Colors.white,
                                                                        SizedBox(
                                                                          height:
                                                                              size.height * 0.1,
                                                                        ),
                                                                        // ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                size.height * 0.13,
                                                                            width:
                                                                                size.width * 0.7,
                                                                            decoration: const BoxDecoration(
                                                                                // color: Colors.black,
                                                                                shape: BoxShape.circle,
                                                                                image: DecorationImage(image: AssetImage('assets/images/check.png'), fit: BoxFit.contain)),
                                                                          ),
                                                                        ),
                                                                        const Padding(
                                                                          padding:
                                                                              EdgeInsets.only(top: 15),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                Text(
                                                                              "Payment Sucessfull",
                                                                              style: TextStyle(height: 1.5, color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                                                                            ),
                                                                          ),
                                                                        ),

                                                                        // SizedBox(
                                                                        //   height: size.height * 0.1,
                                                                        // ),
                                                                        const Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              Text(
                                                                            "Check Subscription Status in account",
                                                                            style: TextStyle(
                                                                                height: 2,
                                                                                color: Colors.white,
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w400),
                                                                          ),
                                                                        ),
                                                                        const Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              Text(
                                                                            "Setting for renewel for logs",
                                                                            style: TextStyle(
                                                                                height: 1.5,
                                                                                color: Colors.white,
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w400),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 60,
                                                                              bottom: 30,
                                                                              top: 35),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () {
                                                                              Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                      builder: ((context) => Home(
                                                                                            isMainUserAsContact: true,
                                                                                            isenterpriseUser: true,
                                                                                          ))));
                                                                            },
                                                                            child:
                                                                                SizedBox(
                                                                              height: size.height * 0.06,
                                                                              width: size.width * 0.5,
                                                                              child: ElevatedButton(
                                                                                  style: ElevatedButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                                  onPressed: () {
                                                                                    print("h");
                                                                                    // Navigator.push(
                                                                                    //     context,
                                                                                    //     MaterialPageRoute(
                                                                                    //         builder: (context) => BottomNavBar(
                                                                                    //               isMainUserAsContact: true,

                                                                                    //             )));
                                                                                  },
                                                                                  child: const Text(
                                                                                    "Get Started",
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
                                                      },
                                                      child: const Text(
                                                        "Pay \$5.99",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.orange,
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
                            child: const Text(
                              "Proceed",
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Legal(
                                        isenterpriseUser: widget.isenterpriseUser,
                                            isMainUserAsContact: widget.isenterpriseUser,
                                          ))));
                            },
                            child: Text(
                              "Restore Purchase",
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            "Terms of Use",
                            style: TextStyle(
                                height: 1.5,
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                height: 1.5,
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ))))
    ]);
  }
}


//    showModalBottomSheet(
//                             context: context,
//                             backgroundColor: Color(0xff858e89),
//                             shape: const RoundedRectangleBorder(
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(18.0),
//                                   topRight: Radius.circular(18.0)),
//                             ),
//                             builder: (context) {
//                               return StatefulBuilder(
//                                 builder: (BuildContext context,
//                                     StateSetter setState) {
//                                   return Container(
//                                     decoration: const BoxDecoration(
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(10),
//                                             topRight: Radius.circular(10))),
//                                     height: size.height * 0.8,
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 20),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         // mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           // const Icon(
//                                           //   Icons.close,
//                                           //   size: 30,
//                                           //   color: Colors.white,
//                                           SizedBox(
//                                             height: size.height * 0.1,
//                                           ),
//                                           // ),
//                                           // Align(
//                                           //   alignment: Alignment.center,
//                                           //   child: Container(
//                                           //     height: size.height * 0.13,
//                                           //     width: size.width * 0.7,
//                                           //     decoration: const BoxDecoration(
//                                           //         // color: Colors.black,
//                                           //         shape: BoxShape.circle,
//                                           //         image: DecorationImage(
//                                           //             image: AssetImage(
//                                           //                 'assets/images/check.png'),
//                                           //             fit: BoxFit.contain)),
//                                           //   ),
//                                           // ),
//                                           const Padding(
//                                             padding: EdgeInsets.only(top: 15),
//                                             child: Align(
//                                               alignment: Alignment.center,
//                                               child: Text(
//                                                 "Payment Sucessfull",
//                                                 style: TextStyle(
//                                                     height: 1.5,
//                                                     color: Colors.white,
//                                                     fontSize: 20,
//                                                     fontWeight:
//                                                         FontWeight.w600),
//                                               ),
//                                             ),
//                                           ),

//                                           // SizedBox(
//                                           //   height: size.height * 0.1,
//                                           // ),
//                                           const Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                               "Check Subscription Status in account",
//                                               style: TextStyle(
//                                                   height: 2,
//                                                   color: Colors.white,
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ),
//                                           const Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                               "Setting for renewel for logs",
//                                               style: TextStyle(
//                                                   height: 1.5,
//                                                   color: Colors.white,
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 60, bottom: 30, top: 35),
//                                             child: InkWell(
//                                               onTap: () {
//                                                 Navigator.push(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                         builder: ((context) =>
//                                                             Home())));
//                                               },
//                                               child: SizedBox(
//                                                 height: size.height * 0.06,
//                                                 width: size.width * 0.5,
//                                                 child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                         primary: Colors.white,
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         10))),
//                                                     onPressed: () {
//                                                       print("h");
//                                                       // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
//                                                     },
//                                                     child: const Text(
//                                                       "Get Started",
//                                                       style: TextStyle(
//                                                         fontSize: 20,
//                                                         color: Colors.orange,
//                                                       ),
//                                                     )),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               );
                        

//     });



// =================
//   return Container(
//                                     height: size.height * 0.9,
//                                     decoration: const BoxDecoration(
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(10),
//                                             topRight: Radius.circular(10))),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 20),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         // mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           const Padding(
//                                             padding: const EdgeInsets.only(
//                                                 top: 10, right: 10),
//                                             child: Align(
//                                               alignment: Alignment.topRight,
//                                               child: const Icon(
//                                                 Icons.close,
//                                                 size: 30,
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                           ),
//                                           // ),
//                                           // Align(
//                                           //   alignment: Alignment.center,
//                                           //   child: Container(
//                                           //     height: size.height * 0.13,
//                                           //     width: size.width * 0.7,
//                                           //     decoration: const BoxDecoration(
//                                           //         // color: Colors.black,
//                                           //         shape: BoxShape.circle,
//                                           //         image: DecorationImage(
//                                           //             image: AssetImage(
//                                           //                 'assets/images/check.png'),
//                                           //             fit: BoxFit.contain)),
//                                           //   ),
//                                           // ),
//                                           const Text(
//                                             "Create Meeting",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 23,
//                                                 fontWeight: FontWeight.w500),
//                                           ),

//                                           // SizedBox(
//                                           //   height: size.height * 0.1,
//                                           // ),
//                                           const Text(
//                                             "Check Subscription Status in account",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w400),
//                                           ),
//                                           SizedBox(
//                                             height: size.height * 0.02,
//                                           ),
//                                           Container(
//                                             height: size.height * 0.06,
//                                             color: Colors.blue,
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 const Text(
//                                                   "Meeting Contact",
//                                                   style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.w400),
//                                                 ),
//                                                 Container(
//                                                   height: size.height * 0.02,
//                                                   width: size.width * 0.5,
//                                                   child: Divider(
//                                                     color: Colors.grey,
//                                                     thickness: 1,
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             height: size.height * 0.03,
//                                           ),
//                                           Container(
//                                             height: size.height * 0.2,
//                                             width: double.infinity,
//                                             decoration: BoxDecoration(
//                                                 color: Color(0xff959996),
//                                                 borderRadius:
//                                                     BorderRadius.circular(14)),
//                                           ),
//                                           const Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                               "Setting for renewel for logs",
//                                               style: TextStyle(
//                                                   height: 1.5,
//                                                   color: Colors.white,
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 60, bottom: 30, top: 35),
//                                             child: InkWell(
//                                               onTap: () {
//                                                 Navigator.push(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                         builder: ((context) =>
//                                                             Home())));
//                                               },
//                                               child: SizedBox(
//                                                 height: size.height * 0.06,
//                                                 width: size.width * 0.5,
//                                                 child: ElevatedButton(
//                                                     style: ElevatedButton.styleFrom(
//                                                         primary: Colors.white,
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                         10))),
//                                                     onPressed: () {
//                                                       print("h");
//                                                       // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
//                                                     },
//                                                     child: const Text(
//                                                       "Get Started",
//                                                       style: TextStyle(
//                                                         fontSize: 20,
//                                                         color: Colors.orange,
//                                                       ),
//                                                     )),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                       },