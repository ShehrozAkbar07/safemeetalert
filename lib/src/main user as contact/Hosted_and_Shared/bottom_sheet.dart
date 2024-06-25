import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../BottomNavigationBar/bottom_navigation_bar.dart';
import '../home/home_page.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          // const Icon(
          //   Icons.close,
          //   size: 30,
          //   color: Colors.white,
          // ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Add Payment Information",
              style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xff858e89),
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: size.height * 0.133,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Username'),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Zip Code'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color(0xff858e89),
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: size.height * 0.1357,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Card Number'),
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
                      width: size.width * 0.5,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 5),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'MM//YY'),
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
                      width: size.width * 0.376,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 5),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'CVV'),
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
                    borderRadius: BorderRadius.circular(2)),
                activeColor: Colors.white,
                side: BorderSide(color: Colors.white),
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
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, bottom: 30, top: 10),
            child: SizedBox(
              height: size.height * 0.06,
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
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/check.png'),
                                                fit: BoxFit.contain)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Payment Sucessfull",
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),

                                    // SizedBox(
                                    //   height: size.height * 0.1,
                                    // ),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Check Subscription Status in account",
                                        style: TextStyle(
                                            height: 2,
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: Text(
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
                                          left: 60, bottom: 30, top: 35),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) => const Home(
                                                        isMainUserAsContact:
                                                            true,
                                                        isenterpriseUser: true,
                                                      ))));
                                        },
                                        child: SizedBox(
                                          height: size.height * 0.06,
                                          width: size.width * 0.5,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {
                                                print("h");
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) =>
                                                //             BottomNavBar(
                                                //               isMainUserAsContact:
                                                //                   true,
                                                //             )
                                                            
                                                //             )
                                                            
                                                //             );
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
  }
}
