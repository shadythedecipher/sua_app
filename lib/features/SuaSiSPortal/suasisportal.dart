import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:sua_app/constants/GlobalVariables.dart';
import 'package:sua_app/features/SuaSiSPortal/attendancePortal/reminder/screen/remainderHomeScreen.dart';
import 'package:sua_app/features/auth/screens/authscreen.dart';
import 'package:fluttericon/typicons_icons.dart';
import '../../commonWidget/bottom_bar.dart';
// ignore: unused_import
import '../../commonWidget/containeranimation.dart';
import '../../commonWidget/custom_button.dart';
import '../AttendancyRegistration/screens/viewSchedule.dart';

class SuaSisPortal extends StatefulWidget {
  const SuaSisPortal({Key? key}) : super(key: key);
  static const String routeName = '/suaSisPortal';

  @override
  State<SuaSisPortal> createState() => _SuaSisPortalState();
}

class _SuaSisPortalState extends State<SuaSisPortal> {
  get subjectDetails => null;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key, // Assign the key to Scaffold.
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://suasis.sua.ac.tz/uploads/photo/infd20190008.jpg'),
                ),
                accountEmail: Text('INF/D/2019/0000'),
                accountName: Text(
                  'Sua Student',
                  style: TextStyle(fontSize: 24.0),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 100, 0, 1),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.house),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const auth_Screen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Typicons.chart_bar),
                title: const Text(
                  'My Information',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const auth_Screen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_task),
                title: const Text(
                  'Take Attendance',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ViewSchedule(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            backgroundColor: GlobalVariables.backgroundColor,
            title: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // GestureDetector(
                  //   onTap: () => _key.currentState!.openDrawer(), // Image tapped
                  //   child: Image.asset(
                  //     'assets/images/suaLogo.png',
                  //     width: 120.w,
                  //     height: 50.h,
                  //   ),
                  // ),
                  Column(
                    children: [
                      Text(
                        "SOKOINE UNIVERSITY OF AGRICULTURE",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Student Attendance System",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.sp,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(
                            Icons.notifications_outlined,
                            // Icons.person,
                            size: 33,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: GestureDetector(
                            onTap: () => Get.to(const OpenExitDialog()),
                            child: const Icon(
                              Typicons.eject,
                              // Icons.logout,
                              size: 27,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const RemainderHomeScreen(),
      ),
    );
  }
}

class OpenExitDialog extends StatefulWidget {
  const OpenExitDialog({Key? key}) : super(key: key);

  @override
  State<OpenExitDialog> createState() => _OpenExitDialogState();
}

class _OpenExitDialogState extends State<OpenExitDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Are you sure you want to log out",
              style: TextStyle(color: GlobalVariables.selectedNavBarColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomButton(
                    text: 'Yes',
                    onTap: () {
                      Get.offAll(const BottomBar());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: 'No',
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        SuaSisPortal.routeName,
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
