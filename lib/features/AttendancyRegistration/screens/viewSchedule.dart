// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sua_app/providers/user_provider.dart';

import '../../../commonWidget/container2.dart';
import '../../../commonWidget/custom_button.dart';
import '../../../constants/GlobalVariables.dart';

class ViewSchedule extends StatefulWidget {
  const ViewSchedule({Key? key}) : super(key: key);

  @override
  State<ViewSchedule> createState() => _ViewScheduleState();
}

class _ViewScheduleState extends State<ViewSchedule> {
  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, OpenContainerTransformDemo2.routeName,
        arguments: category);
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        buildListView();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            backgroundColor: GlobalVariables.backgroundColor,
            leading: Image.asset(
              'assets/images/suaLogo.png',
              width: 120.w,
              height: 50.h,
            ),
            // IconButton(
            //   icon: const Icon(
            //     Icons.person,
            //     color: GlobalVariables.secondaryColor,
            //     size: 40,
            //   ),
            //   onPressed: () => _key.currentState!.openDrawer(),
            // ),
            title: Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "SOKOINE UNIVERSITY OF AGRICULTURE",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Student Attendance System",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40.sp,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(
                            Icons.notifications_outlined,
                            // Icons.person,
                            size: 33,
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(right: 1),
                        //   child: Icon(
                        //     Icons.logout,
                        //     size: 27,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: buildColumn(context),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello, ',
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: user.name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Text(
          'Pick Date to View TimeTable',
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          text: 'Select a Date',
          onTap: () {
            _selectDate(context);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              " Displaying timetable for date: ",
              style: TextStyle(fontSize: 15),
            ),
            Text("${selectedDate.toLocal()}".split(' ')[0]),
          ],
        ),
        buildListView(),
      ],
    );
  }

  ListView buildListView() {
    GlobalVariables.subjects.shuffle();

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: buildLength(),
      scrollDirection: Axis.vertical,
      itemExtent: 200,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => navigateToCategoryPage(
            context,
            GlobalVariables.subjects[index]['title']!,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    GlobalVariables.subjects[index]['image']!,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
              ),
              child: Text(
                GlobalVariables.subjects[index]['title']!,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  int buildLength() {
    Random random = Random();
    int randomNumber = random.nextInt(GlobalVariables.subjects.length);
    if (randomNumber < 2) {
      randomNumber = 2 + 1;
    } else if (randomNumber == 6) {
      randomNumber = 3;
    } else if (randomNumber == 8) {
      randomNumber = 4;
    } else if (randomNumber == 7) {
      randomNumber = 3;
    } else if (randomNumber == 5) {
      randomNumber = 3;
    }

    // ignore: avoid_print
    print(randomNumber);
    return randomNumber;
  }
}
