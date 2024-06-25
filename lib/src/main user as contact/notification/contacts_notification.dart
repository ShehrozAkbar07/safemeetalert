import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CircleAvatar(
              radius: 26,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/man.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.52,
                  // color: Colors.grey,
                  child: const Text(
                    "Sienna McKinzie",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.010,
                ),
                Container(
                  width: size.width * 0.52,
                  // color: Colors.grey,
                  child: const Text(
                    "Not Lesson Booked",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Text(
                  "July 28,2022,1:58pm",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xffFFA693),
                    height: 1.5,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
