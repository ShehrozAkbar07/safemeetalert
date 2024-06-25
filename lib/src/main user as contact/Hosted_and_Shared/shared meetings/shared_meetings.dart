import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/shared%20meetings/shared_meeting_container.dart';

import '../../HOme/alert_history_container.dart';

class SharedMeetings extends StatefulWidget {
  const SharedMeetings({super.key});

  @override
  State<SharedMeetings> createState() => _SharedMeetingsState();
}

class _SharedMeetingsState extends State<SharedMeetings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
          child: Column(
        children: const [
          SharedMeetingContainer(),
          SharedMeetingContainer(),
          SharedMeetingContainer(),
          SharedMeetingContainer(),
          SharedMeetingContainer(),
        ],
      )),
    );
  }
}
