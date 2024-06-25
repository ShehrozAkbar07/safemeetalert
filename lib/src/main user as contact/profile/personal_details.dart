import 'package:flutter/material.dart';

class PersonalDetailWidget extends StatefulWidget {
  final IconData? icon;
  final String? textdata;
  PersonalDetailWidget({this.icon, this.textdata});

  @override
  State<PersonalDetailWidget> createState() => _PersonalDetailWidgetState();
}

class _PersonalDetailWidgetState extends State<PersonalDetailWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: Column(
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
                widget.textdata!,
                style: TextStyle(
                    color: Color.fromARGB(255, 213, 199, 199),
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Divider(thickness: 1, color: Color(0xff927b76))
        ],
      ),
    );
  }
}
