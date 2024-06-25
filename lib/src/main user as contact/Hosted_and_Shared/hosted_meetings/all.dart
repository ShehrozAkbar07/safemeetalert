import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/alert_history_container.dart';

import '../meeting_container.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: const [
            MeetingContainer(),
            MeetingContainer(),
            MeetingContainer(),
            MeetingContainer(),
            MeetingContainer(),
            MeetingContainer(),
          ]),
        ),
      ),
    );
  }
}
