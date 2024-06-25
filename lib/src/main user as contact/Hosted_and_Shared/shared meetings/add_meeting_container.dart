import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddMeetingContainer extends StatefulWidget {
  const AddMeetingContainer({super.key});

  @override
  State<AddMeetingContainer> createState() => _AddMeetingContainerState();
}

class _AddMeetingContainerState extends State<AddMeetingContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.21,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xff959996), borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.person_outline_sharp,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffb6b6b5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Enter Full Name",
                        style: TextStyle(
                            height: 2,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffb6b6b5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Enter Full Name",
                        style: TextStyle(
                            height: 2,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffb6b6b5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Enter Full Name",
                        style: TextStyle(
                            height: 2,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffb6b6b5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Enter Full Name",
                        style: TextStyle(
                            height: 2,
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/mountain.png'),
                    fit: BoxFit.contain),
                // color: Colors.purple
              ),
            ),
          )
        ],
      ),
    );
  }
}
