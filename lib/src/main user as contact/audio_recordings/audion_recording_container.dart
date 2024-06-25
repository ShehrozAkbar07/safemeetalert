import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AudioRecordingCOntainer extends StatefulWidget {
  const AudioRecordingCOntainer({super.key});

  @override
  State<AudioRecordingCOntainer> createState() =>
      _AudioRecordingCOntainerState();
}

class _AudioRecordingCOntainerState extends State<AudioRecordingCOntainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff635957),
      height: size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange),
                    height: size.height * 0.1,
                    width: size.width * 0.2,
                    child: Center(
                      child: Icon(
                        Icons.mic,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
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
                            "NOv 27 2022 12:47pm",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.001,
                        ),
                        Container(
                          width: size.width * 0.52,
                          // color: Colors.grey,
                          child: const Text(
                            "Audio Recording 001",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              height: 1.5,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Text(
                          "2:20 minutes",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            // decoration:
                            //     TextDecoration.underline,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Audio Recording 001",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "2:20 minutes",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // decoration:
                        //     TextDecoration.underline,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.orange,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
