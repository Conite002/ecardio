import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecardio/views/anthropometrics/anthinfos.dart';
import 'package:ecardio/views/design_course/home_design_course.dart';
import 'package:ecardio/views/diagnostic/DiagnosisPage.dart';
import 'package:ecardio/views/home.dart';
import 'package:ecardio/views/users/order.dart';
import 'package:ecardio/views/users/profile.dart';
import 'package:ecardio/views/users/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Order order;
  late Profile profile;
  late Wallet wallet;
  late DesignCourseHomeScreen homeCourse;
  late AnthroInfos anthropoInfos;
  late DiagnosticPage diagnosisPage;

  @override
  void initState() {
    homepage = Home();
    order = Order();
    anthropoInfos = AnthroInfos();
    profile = Profile();
    wallet = Wallet();
    diagnosisPage = DiagnosticPage();
    homeCourse = DesignCourseHomeScreen();
    pages = [homeCourse, anthropoInfos, diagnosisPage, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: const Duration(milliseconds: 400),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: const [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            )
          ]),
      body: pages[currentTabIndex],
    );
  }
}
