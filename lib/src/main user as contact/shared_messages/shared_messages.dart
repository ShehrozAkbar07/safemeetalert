import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/appbar.dart';
import '../HOme/background_image.dart';

class SharedMessages extends StatefulWidget {
  const SharedMessages({super.key});

  @override
  State<SharedMessages> createState() => _SharedMessagesState();
}

class _SharedMessagesState extends State<SharedMessages>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppBarr(
                              SecondContainerColor: Colors.transparent,
                              SecondIconColor: Colors.transparent,
                              ContainerColor: const Color(0xffd66855),
                              IconColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Mark Read",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Center(
                              child: Container(
                                height: size.height * 0.067,
                                width: size.width * 0.9,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: TabBar(
                                          unselectedLabelColor: Colors.black,
                                          labelColor: Colors.yellow,
                                          indicatorPadding: EdgeInsets.zero,
                                          indicatorColor: Colors.blue,
                                          indicatorWeight: 0,
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
                                          indicator: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                          255, 231, 221, 221)
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      4), // changes position of shadow
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(28)),
                                          controller: tabController,
                                          tabs: [
                                            Container(
                                              height: 20,
                                              child: const Tab(
                                                text: 'Active',
                                              ),
                                            ),
                                            const Tab(
                                              text: 'Waiting',
                                            ),
                                            const Tab(
                                              text: 'Inactive',
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ])))))
    ]);
  }
}
