import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbar4 extends StatefulWidget {
  Color ContainerColor;
  Color IconColor;
  String title;
  dynamic loacation;
  Appbar4(
      {super.key,
      required this.ContainerColor,
      required this.IconColor,
      this.loacation,
      required this.title});

  @override
  State<Appbar4> createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => widget.loacation()));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
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
      ],
    );
  }
}

// Color(0xffd66855)