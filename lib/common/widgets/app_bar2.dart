// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:safe_meet_alert/src/main%20user%20as%20contact/notification/notification.dart';

// class Appbar2 extends StatefulWidget {
//   final Color? ContainerColor;
//   dynamic loacation;
//   Color? IconColor;
//   String title;
//   bool? showContainer;
//   Appbar2(
//       {super.key,
//       this.ContainerColor,
//       this.IconColor,
//       required this.title,
//       this.loacation});

//   @override
//   State<Appbar2> createState() => _Appbar2State();
// }

// class _Appbar2State extends State<Appbar2> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: const Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               widget.title,
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               width: size.width * 0.01,
//             ),
//           ],
//         ),
//         InkWell(
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: ((context) => const Notifications())));
//           },
//           child: Container(
//               height: size.height * 0.07,
//               width: size.width * 0.07,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle, color: widget.ContainerColor),
//               child: Center(
//                   child: Icon(
//                 Icons.notifications,
//                 color: widget.IconColor,
//                 size: 20,
//               ))),
//         )
//       ],
//     );
//   }
// }

// // Color(0xffd66855)