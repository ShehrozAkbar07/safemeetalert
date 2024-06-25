import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/help/help.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/permissions/permission.dart';
import 'package:safe_meet_alert/src/main%20user/appbar/main_user_appbar.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/search_bar.dart';
import 'package:safe_meet_alert/src/main%20user/meeting%20code/pin_code_bar.dart';

import '../../../common/appbar.dart';
import '../../main user as contact/HOme/background_image.dart';
import '../../main user as contact/legal/legal.dart';
import '../../main user as contact/personal_details/personal_detail.dart';
import 'number.dart';

class MeetingCode extends StatefulWidget {
  const MeetingCode({super.key});

  @override
  State<MeetingCode> createState() => _MeetingCodeState();
}

class _MeetingCodeState extends State<MeetingCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    PinCodeBar(text: "", controller: controller),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Divider(
                        thickness: 0,
                        color: Color(0xff7B6B68),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Number(
                            number: "1",
                          ),
                          Number(
                            number: "2",
                          ),
                          Number(
                            number: "3",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Number(
                            number: "4",
                          ),
                          Number(
                            number: "5",
                          ),
                          Number(
                            number: "6",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Number(
                            number: "7",
                          ),
                          Number(
                            number: "8",
                          ),
                          Number(
                            number: "9",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Number(
                        number: "0",
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ))))
    ]);
  }
}
