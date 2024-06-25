import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Number extends StatefulWidget {
  String number;
  Number({required this.number});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: size.width * 0.19,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xff83726e)),
      child: Center(
        child: Text(
          widget.number,
          style: const TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
