import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../src/main user as contact/notification/notification.dart';

class AppBarr extends StatefulWidget {
  Color ContainerColor;
  Color IconColor;
  Color SecondIconColor;
  Color SecondContainerColor;
  Function? opensheet;
  AppBarr(
      {super.key,
      required this.ContainerColor,
      required this.IconColor,
      this.opensheet,
      required this.SecondContainerColor,
      required this.SecondIconColor});

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "safemeetalert",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            Container(
                height: size.height * 0.02,
                width: size.width * 0.1,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Pro",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                )),
          ],
        ),
        Container(
          width: size.width * 0.16,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: size.height * 0.07,
                  width: size.width * 0.07,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.SecondContainerColor),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      widget.opensheet;
                    },
                    child: Icon(
                      Icons.add,
                      color: widget.SecondIconColor,
                      size: 20,
                    ),
                  ))),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Notifications()));
                },
                child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: widget.ContainerColor),
                    child: Center(
                        child: Icon(
                      Icons.notifications,
                      color: widget.IconColor,
                      size: 20,
                    ))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Color(0xffd66855)