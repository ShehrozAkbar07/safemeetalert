import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/main%20user/compromised_meetings.dart';

class MeetingContainer extends StatefulWidget {
  const MeetingContainer({super.key});

  @override
  State<MeetingContainer> createState() => _MeetingContainerState();
}

class _MeetingContainerState extends State<MeetingContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CompromisedMeetings()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff9b8884),
            // image: DecorationImage(
            //     image: AssetImage('assets/images/shadow_image.jpg'),
            //     fit: BoxFit.cover)
          ),
          height: size.height * 0.13,
          width: double.infinity,
          child: Center(
              child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 10, right: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "9 November 2002 12:47pm",
                      style: TextStyle(
                          color: Colors.white,
                          height: 3.2,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                    Text(
                      "Shared Meeting with Ramos",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16.0,
                            backgroundImage: AssetImage('assets/images/man.jpg'),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16.0,
                            backgroundImage: AssetImage('assets/images/man.jpg'),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16.0,
                            backgroundImage: AssetImage('assets/images/man.jpg'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
