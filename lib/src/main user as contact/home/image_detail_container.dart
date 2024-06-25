import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/emergency/emergency.dart';

class ImageDetailContainer extends StatefulWidget {
  final bool isMainUserAsContact;

  const ImageDetailContainer({super.key, required this.isMainUserAsContact});

  @override
  State<ImageDetailContainer> createState() => _ImageDetailContainerState();
}

class _ImageDetailContainerState extends State<ImageDetailContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.black,
      ),
      height: size.height * 0.24,
      // width: size.width*0.1,
      child: Row(
        children: [
          Container(
            child: Center(
              child: Container(
                  height: size.height * 0.1,
                  child: Image(
                      image: AssetImage('assets/images/confirmation.png'))),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("assets/images/map.PNG"),
                  fit: BoxFit.cover),

              // borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            height: size.height * 0.24,
            width: size.width * 0.55,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage("assets/images/shadow_image.jpg"),
                    fit: BoxFit.cover)
                // color: Colors.blue,
                ),
            height: size.height * 0.24,
            width: size.width * 0.366,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "Sanford Long",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Compared",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "Compromised",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Meeting Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                      width: size.width * 0.2,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Emergency(
                                        isMainUserAsContact:
                                            widget.isMainUserAsContact)));
                          },
                          child: const Text(
                            "Details",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 10),
                          )),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
