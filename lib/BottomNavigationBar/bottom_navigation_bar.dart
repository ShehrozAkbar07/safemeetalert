import 'package:flutter/material.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscription_plan.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/emergency_contects.dart';
import '../src/main user as contact/Hosted_and_Shared/hosted_and_shared.dart';
import '../src/main user as contact/home/home_page.dart';
import '../src/main user as contact/profile/profile.dart';

class BottomNavBar extends StatefulWidget {
  final bool isMainUserAsContact;
  final bool isenterpriseUser;

  const BottomNavBar({
    super.key,
    required this.isMainUserAsContact,
    required this.isenterpriseUser,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    _widgetOptions = <Widget>[
      Home(
        isMainUserAsContact: widget.isMainUserAsContact,
        isenterpriseUser: widget.isenterpriseUser,
      ),
      // : HomeUpgrade(
      //     isMainUserAsContact: widget.isMainUserAsContact,
      //   ),
      HostedAndShared(
        isenterpriseUser: widget.isenterpriseUser,
        isMainUserAsContact: widget.isMainUserAsContact,
      ),
      widget.isMainUserAsContact
          ? SubscriptionPlan(
              isMainUserAsContact: widget.isMainUserAsContact,
              isenterpriseUser: widget.isenterpriseUser,
            )
          : EmergencyContact(
              isenterpriseUser: widget.isenterpriseUser,
              isMainUserAsContact: widget.isMainUserAsContact,
            ),
      // SubscriptionPlan(),
      // Emergency(),
      Profile(
        isMainUserAsContact: widget.isMainUserAsContact,
        isenterpriseUser: widget.isenterpriseUser,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.other_houses_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
