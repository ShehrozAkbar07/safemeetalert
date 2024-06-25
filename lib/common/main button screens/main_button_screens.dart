import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safe_meet_alert/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:safe_meet_alert/common/appbar.dart';
import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/HOme/background_image.dart';
import 'package:safe_meet_alert/src/splash/splash_view.dart';

class MainButtonScreeeen extends StatefulWidget {
  const MainButtonScreeeen({super.key});

  @override
  State<MainButtonScreeeen> createState() => _MainButtonScreeeenState();
}

class _MainButtonScreeeenState extends State<MainButtonScreeeen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundImage(),
      Scaffold(
          backgroundColor: Colors.transparent,
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.other_houses_outlined,
          //         ),
          //         label: ""),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.business,
          //       ),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.location_on_outlined,
          //       ),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         Icons.person_outline_rounded,
          //       ),
          //       label: '',
          //     ),
          //   ],
          //   unselectedItemColor: Colors.grey,
          //   selectedItemColor: Colors.grey,
          //   onTap: _onItemTapped,
          // ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.4,
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen(
                                    isenterpriseUser: false,
                                    isMainUserAsContact: true,
                                  )));
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFFFFFF)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: Text(
                      "Main User as Contact",
                      style: const TextStyle(
                          color: Color(0xffEB5F41), fontSize: 23),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen(
                                    isenterpriseUser: false,
                                    isMainUserAsContact: false,
                                  )));
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFFFFFF)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: Text(
                      "Main User",
                      style: const TextStyle(
                          color: Color(0xffEB5F41), fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen(
                                    isenterpriseUser: true,
                                    isMainUserAsContact: false,
                                  )));
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFFFFFF)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: Text(
                      "Enterprise User",
                      style: const TextStyle(
                          color: Color(0xffEB5F41), fontSize: 23),
                    ),
                  ),
                ),
              ],
            ),
          ))
    ]);
  }
}
