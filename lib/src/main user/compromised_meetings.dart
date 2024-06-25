import 'package:flutter/material.dart';
import 'package:safe_meet_alert/common/widgets/app_bar2.dart';
import 'package:safe_meet_alert/common/widgets/appbar3.dart';
import 'package:safe_meet_alert/common/widgets/custom_button.dart';
import 'package:safe_meet_alert/common/widgets/text_field.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/audio_recordings/audio_recordings.dart';

import '../main user as contact/HOme/background_image.dart';
import '../main user as contact/notification/notification.dart';

class CompromisedMeetings extends StatefulWidget {
  const CompromisedMeetings({Key? key}) : super(key: key);

  @override
  _CompromisedMeetingsState createState() => _CompromisedMeetingsState();
}

class _CompromisedMeetingsState extends State<CompromisedMeetings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      BackGroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          // fit: StackFit.expand,
          children: <Widget>[
            // Image.asset(
            //   "assets/images/background.jpeg",
            //   fit: BoxFit.fill,
            //   height: size.height,
            //   width: size.width,
            // ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Appbar3(
                    loacation: Notifications(isMainUserAsContact: true,isenterpriseUser: true,),
                    title: "Meetings with Terry",
                    ContainerColor: const Color(0xffd66855),
                    IconColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                    height: 83,
                    width: 83,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '!',
                        style: TextStyle(fontSize: 48, color: Colors.pink),
                      ),
                    )),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  '16 Ransburg, Network, De',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.067),
                  child: Text(
                    'Meetings Compromised',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.62,
                decoration: const BoxDecoration(
                  color: Color(0xff878E89),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Meeting Overview",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AudioRecordings()));
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 105, 106, 105),
                                child: Icon(
                                  Icons.mic_none_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Divider(
                        thickness: 0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.14,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff959A96),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hosted by Sam',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    'Jun 12,2022',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    'Meeting Time',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '01:45',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 45),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hours',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.05,
                                      ),
                                      Text(
                                        'Min',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        height: size.height * 0.16,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff959A96),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Terry Richomd',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  const Text(
                                    'Terry@gmIl.com',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    '+99 175-1822',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    '12 Rocenued Br, Nework DE',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: size.height * 0.1,
                                    width: size.width * 0.2,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/splashlogo.png'))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xff959A96),
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
                              padding:
                                  const EdgeInsets.only(left: 10, right: 3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "Added Contacts",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      "Emergency Contacts",
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 2,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 16.0,
                                          backgroundImage: AssetImage(
                                              'assets/images/man.jpg'),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 16.0,
                                          backgroundImage: AssetImage(
                                              'assets/images/man.jpg'),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 16.0,
                                          backgroundImage: AssetImage(
                                              'assets/images/man.jpg'),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 16.0,
                                          backgroundImage: AssetImage(
                                              'assets/images/man.jpg'),
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
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
