// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../../main user as contact/HOme/alert_history_container.dart';


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
//               ButtonsTabBar(
//                   contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//                   backgroundColor: Colors.white,
//                   unselectedBackgroundColor: Colors.grey,
//                   unselectedLabelStyle: const TextStyle(color: Colors.white),
//                   labelStyle: const TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12),
//                   tabs: const [
//                     Tab(
//                       text: "All",
//                     ),
//                     Tab(
//                       text: "Completed",
//                     ),
//                     Tab(
//                       text: "Compromised",
//                     ),
//                     Tab(
//                       text: "In Progres",
//                     ),
//                   ]),
//               const Expanded(
//                   child: TabBarView(children: [
//                 AlertHistoryContainer(),
//                 AlertHistoryContainer(),
//                 AlertHistoryContainer(),
//                 AlertHistoryContainer(),
//               ]))
//             ],
//           )),
//     );
//   }
// }

// //AlertHistoryContainer()