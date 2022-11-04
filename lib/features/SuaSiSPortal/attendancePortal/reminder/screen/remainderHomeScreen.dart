// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:sua_app/constants/GlobalVariables.dart';

import '../../../../../commonWidget/containeranimation.dart';
import '../../../../search/screens/search_screen.dart';

class RemainderHomeScreen extends StatefulWidget {
  const RemainderHomeScreen({Key? key}) : super(key: key);

  @override
  State<RemainderHomeScreen> createState() => _RemainderHomeScreenState();
}

class _RemainderHomeScreenState extends State<RemainderHomeScreen> {
  void navigateToSearchScreen(String query) {
    Navigator.pushNamed(context, SearchScreen.routeName, arguments: query);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.teal,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    color: const Color.fromRGBO(0, 100, 0, 1),
                  ),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        " COLLAGE OF NATURAL AND APPLIED SCIENCES ",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Department of Informatics ",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Informatics year 3",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Personal information",
                    style: TextStyle(fontSize: 24.0)),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 309',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'IT security is strategy to prevents unauthorized...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 309");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 311',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'A distributed system is a computing environment...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 311");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 308',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'Computer information architecture...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 308");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 316',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'Ethical principle on computer technology...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 316");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 313',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'A course for networking environment...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 313");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 312',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'Artificial intelligence course...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 312");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 305',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'A Computer networking environment...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 305");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 300',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'Flutter Programming...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 300");
              },
            ),
            ListTile(
              leading: const Icon(Typicons.news),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INF 321',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: GlobalVariables.selectedNavBarColor),
                          ),
                          const Text(
                            'Android Programming...',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(
                    context, OpenContainerTransformDemo.routeName,
                    arguments: "INF 321");
              },
            ),
          ],
        ),
      ),
    );
  }
}
