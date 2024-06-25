import 'dart:io';

import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscription_plan.dart';

class StatisticsContainer extends StatefulWidget {
  const StatisticsContainer({super.key});

  @override
  State<StatisticsContainer> createState() => _StatisticsContainerState();
}

class _StatisticsContainerState extends State<StatisticsContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          // color: Colors.black,
          image: const  DecorationImage(
              opacity: 20.0,
              scale: 2,
              image: AssetImage('assets/images/meeting.png'),
              fit: BoxFit.cover)),
      height: size.height * 0.17,
      width: double.infinity,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Upgrade to Premium",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "pgrade to Premiumpgrade to ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
            width: size.width * 0.24,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubscriptionPlan(isMainUserAsContact: true,isenterpriseUser: true,)));
                },
                child: Text(
                  "Upgrade",
                  style: TextStyle(color: Colors.orange),
                )),
          )
        ],
      )),
    );
  }
}
