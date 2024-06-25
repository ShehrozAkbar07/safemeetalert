import 'package:flutter/material.dart';
import 'package:safe_meet_alert/Emergency_contacts/boxes_emercon.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/common/widgets/appbar6.dart';

class emergency_contacts extends StatefulWidget {
  const emergency_contacts({Key? key}) : super(key: key);

  @override
  _emergency_contactsState createState() => _emergency_contactsState();
}

class _emergency_contactsState extends State<emergency_contacts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 80.10, //set your height
            flexibleSpace: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: size.height*0.05,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Appbar6(
                          ContainerColor: Colors.white,
                          IconColor: Colors.transparent,
                          title: 'Emergency Contacts')),
                ],
              ),
            ),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                "assets/images/overlay.png",
                fit: BoxFit.fill,
                height: size.height,
                width: size.width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.15,
                    ),
                 const    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Meeting Contacts",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                     SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      "Contacts selected for emergency alerts",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                      SizedBox(
                              height: size.height * 0.05,
                            ),
                    BoxesEmercon(),
                    Divider(
                      color: Colors.white,    
                      thickness: 0.08,
                    ),
                       BoxesEmercon(),
                    Divider(
                      color: Colors.white,    
                      thickness: 0.08,
                    ),
                       BoxesEmercon(),
                    Divider(
                      color: Colors.white,    
                      thickness: 0.08,
                    ),
                       BoxesEmercon(),
                    Divider(
                      color: Colors.white,    
                      thickness: 0.08,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
