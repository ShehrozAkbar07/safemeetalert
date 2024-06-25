// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/completed.dart';
// import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/compromised.dart';
// import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_meetings/in_progress.dart';

// import '../../HOme/alert_history_container.dart';
// import 'all.dart';

// class HostedMeetings extends StatefulWidget {
//   const HostedMeetings({super.key});

//   @override
//   State<HostedMeetings> createState() => _HostedMeetingsState();
// }

// class _HostedMeetingsState extends State<HostedMeetings> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: DefaultTabController(
//           length: 4,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10, left: 10, top: 10),
//                 child: ButtonsTabBar(
//                     contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//                     backgroundColor: Colors.white,
//                     unselectedBackgroundColor: Colors.grey,
//                     unselectedLabelStyle: const TextStyle(color: Colors.white),
//                     labelStyle: const TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12),
//                     tabs: const [
//                       Tab(
//                         text: "All",
//                       ),
//                       Tab(
//                         text: "Completed",
//                       ),
//                       Tab(
//                         text: "Compromised",
//                       ),
//                       Tab(
//                         text: "In Progres",
//                       ),
//                     ]),
//               ),
//               const Expanded(
//                   child: TabBarView(children: [
//                 All(),
//                 Completed(),
//                 Compromised(),
//                 InProgress(),
//               ]))
//             ],
//           )),
//     );
//   }
// }

// //AlertHistoryContainer()