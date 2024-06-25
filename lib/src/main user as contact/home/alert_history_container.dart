import 'dart:io';

import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/completed.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/compromised.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/contact_and_overview/contact_and_overview1.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/meetings/meetings1.dart';
import 'package:safe_meet_alert/src/main%20user/compromised_meetings.dart';

class AlertHistoryContainer extends StatefulWidget {
  const AlertHistoryContainer({super.key});

  @override
  State<AlertHistoryContainer> createState() => _AlertHistoryContainerState();
}

class _AlertHistoryContainerState extends State<AlertHistoryContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Color(0xff9b8884),
          // image: DecorationImage(
          //     image: AssetImage('assets/images/shadow_image.jpg'),
          //     fit: BoxFit.cover)
        ),
        height: size.height * 0.17,
        width: double.infinity,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "9 November 2002 12:47pm",
                    style: TextStyle(
                        color: Colors.white,
                        height: 3.2,
                        fontSize: 12,
                        fontWeight: FontWeight.w200),
                  ),
                  Text(
                    "Shared Meeting with Ramos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "Compared",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
              width: size.width * 0.23,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CompromisedMeetings()));
                  },
                  child: const Text(
                    "Details",
                    style: TextStyle(color: Colors.orange),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
