import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SubscriptionPlanROw extends StatefulWidget {
  String? texxt;
  SubscriptionPlanROw({this.texxt, super.key});

  @override
  State<SubscriptionPlanROw> createState() => _SubscriptionPlanROwState();
}

class _SubscriptionPlanROwState extends State<SubscriptionPlanROw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            // height: size.height * 0.025,
            width: size.width * 0.08,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: const Center(
                child: Icon(
              Icons.check,
              color: Color.fromARGB(255, 207, 125, 31),
              size: 15,
            ))),
        SizedBox(
          width: size.width * 0.01,
        ),
        Text(
          widget.texxt!,
          style: const TextStyle(
              height: 1.5,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
