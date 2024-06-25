import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmergenctContactWidgets extends StatefulWidget {
  final IconData? icon;
  final String? textdata;
  EmergenctContactWidgets({this.icon, this.textdata});

  @override
  State<EmergenctContactWidgets> createState() =>
      _EmergenctContactWidgetsState();
}

class _EmergenctContactWidgetsState extends State<EmergenctContactWidgets> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: size.height * 0.06,
                    width: size.width * 0.1,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Center(
                        child: Icon(
                      widget.icon,
                      color: Colors.black,
                      size: 24,
                    ))),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Text(
                  widget.textdata!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Text(
              "pending invite",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ]),
          const Divider(
            thickness: 0.8,
            color: Color(0xff927b76)
          )
        ],
      ),
    );
  }
}

class EmergencyContainerStarWidget extends StatefulWidget {
  final String? textdataa;

  const EmergencyContainerStarWidget({required this.textdataa});

  @override
  State<EmergencyContainerStarWidget> createState() =>
      _EmergencyContainerStarWidgetState();
}

class _EmergencyContainerStarWidgetState
    extends State<EmergencyContainerStarWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.1,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/man.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Text(
                  widget.textdataa!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Icon(
              Icons.star,
              color: Colors.yellow[600],
              size: 30,
            )
          ]),
          const Divider(thickness: 0.8, color: Color(0xff927b76))
        ],
      ),
    );
  }
}
