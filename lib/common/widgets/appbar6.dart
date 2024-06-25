import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbar6 extends StatefulWidget {
  Color ContainerColor;
  Color IconColor;
  String title;
  Appbar6(
      {super.key,
      required this.ContainerColor,
      required this.IconColor,
      required this.title});
  @override
  State<Appbar6> createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
          ],
        ),
        // Container(
        //     height: size.height * 0.07,
        //     width: size.width * 0.07,
        //     decoration: BoxDecoration(
        //         shape: BoxShape.circle, color: widget.ContainerColor),
        //     child: Center(
        //         child: Icon(
        //       Icons.notifications,
        //       color: widget.IconColor,
        //       size: 20,
        //     )))
      ],
    );
  }
}

// Color(0xffd66855)