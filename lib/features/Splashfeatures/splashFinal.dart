// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sua_app/constants/GlobalVariables.dart';

import '../../commonWidget/bottom_bar.dart';

class SplashFinal extends StatefulWidget {
  const SplashFinal({Key? key}) : super(key: key);
  static String routeName = "";

  @override
  State<SplashFinal> createState() => _SplashFinalState();
}

class _SplashFinalState extends State<SplashFinal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/suaLogo.png",
            height: 550.h,
            width: 300.w,
          ),
          CircularProgressIndicator(
            color: GlobalVariables.selectedNavBarColor,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () => Get.off(const BottomBar()));
  }
}
