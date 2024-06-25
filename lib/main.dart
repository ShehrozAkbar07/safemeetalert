import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safe_meet_alert/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:safe_meet_alert/Subscrption/subscription1.dart';
import 'package:safe_meet_alert/src/auth/login/login_view.dart';
import 'package:safe_meet_alert/src/auth/register%20screen/register.dart';
import 'package:safe_meet_alert/src/auth/security%20pin%20setup/security_pin_setup.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/Hosted_and_Shared/hosted_and_shared.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/emergency/emergency.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home/home_page.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/home2/home2.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/legal/legal.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/notification/notification.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/personal_details/personal_detail.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/profile/profile.dart';
import 'package:safe_meet_alert/src/main%20user%20as%20contact/subscription_plan/subscription_plan.dart';
import 'package:safe_meet_alert/src/main%20user/emergency%20contacts/emergency_contects.dart';
import 'package:safe_meet_alert/src/main%20user/meeting%20code/meeting_code.dart';
import 'package:safe_meet_alert/src/onboarding/onboarding_view.dart';
import 'package:safe_meet_alert/src/splash/splash_view.dart';
import 'Emergency_contacts/emergency_contacts.dart';

import 'Emergency_contacts/emergency_contacts.dart';
import 'common/main button screens/main_button_screens.dart';
import 'common/utils/apptheme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SafeMeetAlerts',
        theme: AppTheme.lightTheme,
        home: OnBoardingScreen(isMainUserAsContact: false, isenterpriseUser: false,));
  }
}
