import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatisticsRow extends StatefulWidget {
  final String number;
  final String title;
  const StatisticsRow({super.key, required this.number, required this.title});

  @override
  State<StatisticsRow> createState() => _StatisticsRowState();
}

class _StatisticsRowState extends State<StatisticsRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.1,
          width: size.width * 0.17,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffe85839)),
          child: Center(
            child: Text(
              widget.number,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
