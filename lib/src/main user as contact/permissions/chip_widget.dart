import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChipWidget extends StatefulWidget {
  final IconData icon;
  final String textdata;
  final bool isTrue;
  const ChipWidget(
      {super.key,
      required this.icon,
      required this.textdata,
      required this.isTrue});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  bool _switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    height: size.height * 0.06,
                    width: size.width * 0.1,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Center(
                        child: Icon(
                      widget.icon,
                      color: Colors.white,
                      size: 24,
                    ))),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Text(
                  widget.textdata,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 213, 199, 199),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Transform.scale(
              scale: 0.8,
              child: CupertinoSwitch(
                activeColor: Colors.orange,
                trackColor: Colors.grey,
                value: widget.isTrue,
                onChanged: (value) {
                  setState(() {
                    _switchValue3 = value;
                  });
                },
              ),
            ),
          ],
        ),
        widget.isTrue
            ? const SizedBox.shrink()
            : const SizedBox(
                height: 20,
              ),
        widget.isTrue
            ? const SizedBox.shrink()
            : const Text(
                "(Mandatory for real-time tracking)",
                style: TextStyle(
                  color: Color.fromARGB(255, 213, 199, 199),
                ),
              ),
        widget.isTrue
            ? const SizedBox.shrink()
            : const SizedBox(
                height: 20,
              ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 182, 175, 175),
        )
      ],
    );
  }
}
