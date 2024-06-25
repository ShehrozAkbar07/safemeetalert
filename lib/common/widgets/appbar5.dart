import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbar5 extends StatefulWidget {
  Color ContainerColor;
  Color IconColor;
  String title;
  Appbar5(
      {super.key,
      required this.ContainerColor,
      required this.IconColor,
      required this.title});

  @override
  State<Appbar5> createState() => _Appbar5State();
}

class _Appbar5State extends State<Appbar5> {
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
        Row(
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.07,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: widget.ContainerColor),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: widget.IconColor,
                  size: 20,
                ),
              ),
            ),
              SizedBox(
              width: size.width * 0.03,
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.07,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: widget.ContainerColor),
              child: Center(
                child: Icon(
                  Icons.notifications,
                  color: widget.IconColor,
                  size: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

// Color(0xffd66855)