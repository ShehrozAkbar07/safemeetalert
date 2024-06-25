import 'package:flutter/material.dart';

import '../../main user as contact/meetinglocation/meeting_location.dart';

class PinCodeBar extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final int? maxlines;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const PinCodeBar(
      {Key? key,
      required this.text,
      this.maxlines,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      style: TextStyle(fontSize: 60, color: Color.fromARGB(255, 190, 182, 182)),
      obscureText: true,
      textAlign: TextAlign.left,
      keyboardType: keyboardType,
      // maxLines: maxlines,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        // fillColor: const Color(AppColors.fillColor),
        filled: true,
        // prefixIcon: const Padding(
        //   padding: EdgeInsets.only(left: 5),
        //   child: Icon(
        //     Icons.search,
        //     color: Colors.white,
        //     size: 30,
        //   ),
        // ),

        // maxLines: maxlines,

        hintText: text,

        hintStyle: const TextStyle(color: Colors.white, fontSize: 16),
        suffixIcon: InkWell(
          onTap: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: AlertDialog(
                      insetPadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      backgroundColor: Color(0xff878e89),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      content: Builder(builder: (context) {
                        var height = MediaQuery.of(context).size.height;
                        var width = MediaQuery.of(context).size.width;

                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: double.infinity,

                            // margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: size.height * 0.06,
                                      width: size.width * 1.5,
                                      decoration: const BoxDecoration(
                                          // color: Colors.black,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/check.png'),
                                              fit: BoxFit.contain)),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Meeting Ended",
                                        style: TextStyle(
                                            height: 1.5,
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),

                                  // SizedBox(
                                  //   height: size.height * 0.1,
                                  // ),
                                  const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Meeting concluded with security pin",
                                      style: TextStyle(
                                          height: 2,
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: size.height * 0.047,
                                      width: size.width * 0.34,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8))),
                                          onPressed: () {
                                               Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MeetingLocation()));
                                            
                                          },
                                          child: const Text(
                                            "Go to Meetings",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.orange,
                                            ),
                                          )),
                                    ),
                                  ),

                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                });
            // showDialog(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return AlertDialog(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10.0))),
            //       content: Container(
            //         height: size.height*0.1,
            //         width: size.width*1,
            //         color: Colors.blue,
            //       ),
            //     );
            //   },
            // );
          },
          child: const Icon(
            Icons.send_rounded,
            color: Color.fromARGB(255, 190, 182, 182),
            size: 30,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
