import 'dart:io';

import 'package:flutter/material.dart';

import '../../../main user/compromised_meetings.dart';

class SharedMeetingContainer extends StatefulWidget {
  const SharedMeetingContainer({super.key});

  @override
  State<SharedMeetingContainer> createState() => _SharedMeetingContainerState();
}

class _SharedMeetingContainerState extends State<SharedMeetingContainer> {
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
        height: size.height * 0.13,
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
              width: size.width * 0.2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompromisedMeetings()));
                    // /
                  },
                  child: const Text(
                    "Details",
                    style: TextStyle(color: Colors.orange, fontSize: 12),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
