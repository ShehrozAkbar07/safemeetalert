import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/src/main%20user/appbar/main_user_appbar.dart';

import '../../../common/widgets/app_bar2.dart';
import '../home/background_image.dart';
import 'audion_recording_container.dart';

class AudioRecordings extends StatefulWidget {
  const AudioRecordings({super.key});

  @override
  State<AudioRecordings> createState() => _AudioRecordingsState();
}

class _AudioRecordingsState extends State<AudioRecordings> {
  List<String> text_one = ['Privacy', 'Terms of Services', 'Refund'];
  // List<String> text_two = ['0Hrs', '0Hrs', '0Hrs', '0Hrs'];
  dynamic selected = null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child:  MainUserAppBar(title: "AudioRecordings", iconvalue: true, isMainUserAsContact: true, isNotification: false, pro_Container: false, isenterpriseUser: true)
                  
                  // Appbar2(
                  //   title: "AudioRecordings",
                  //   ContainerColor: Colors.transparent,
                  //   IconColor: Colors.transparent,
                  // ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                AudioRecordingCOntainer(),
                SizedBox(
                  height: size.height * 0.01,
                ),
                AudioRecordingCOntainer(),
              ]))))
    ]);
  }
}
