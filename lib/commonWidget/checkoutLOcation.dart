// ignore_for_file: file_names, camel_case_types, duplicate_ignore

import 'dart:math';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sua_app/constants/GlobalVariables.dart';
import 'package:sua_app/features/AttendancyRegistration/services/AuthService.dart';
import 'package:sua_app/providers/user_provider.dart';
import '../features/SuaSiSPortal/suasisportal.dart';
import 'custom_button.dart';

// ignore: camel_case_types
class checkoutLocation extends StatefulWidget {
  const checkoutLocation({
    Key? key,
    required this.category,
    required this.lat,
    required this.long,
  }) : super(key: key);
  static const String routeName = '/checkout';
  final String category;
  final double? lat;
  final double? long;
  // final String className;

  @override
  _checkoutLocationState createState() {
    return _checkoutLocationState();
  }
}

class _checkoutLocationState extends State<checkoutLocation> {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify the Location"),
      ),
      body: _OpenContainerWrapper(
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return _DetailsPage(
            category: widget.category,
            lat: widget.lat!,
            long: widget.long!,
          );
        },
        category: widget.category,
        long: widget.long!,
        lat: widget.lat!,
        className: "",
      ),
    );
  }
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.category,
    required this.lat,
    required this.long,
    required this.className,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final String category;
  final double lat;
  final double long;
  final String className;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return _DetailsPage(
          category: category,
          long: long,
          lat: lat,
        );
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class _DetailsPage extends StatefulWidget {
  const _DetailsPage(
      {required this.category, required this.lat, required this.long});

  final String category;
  final double lat;
  final double long;
  static String name = "";

  @override
  State<_DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<_DetailsPage> {
  AuthService serv = AuthService();
  @override
  void initState() {
    buildLength();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset(
                "assets/images/suaLogo.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Subject: " + widget.category,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Location",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black54,
                            fontSize: 15.0,
                          ),
                    ),
                    Text(
                      " Lat:" +
                          widget.lat.toString() +
                          " Long: " +
                          widget.long.toString(),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black87,
                            fontSize: 15.0,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Class: " + _DetailsPage.name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Verify information by submitting below",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.green,
                        fontSize: 12.0,
                      ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Check Out Information for ' + widget.category,
                  onTap: () {
                    serv.signUpAttendance(
                        context: context,
                        name: user.name,
                        classname: _DetailsPage.name,
                        subjectname: widget.category,
                        statusOfAttendance: "Signed");
                    buildLength();
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
    );
  }

  void buildLength() {
    Random random = Random();
    int randomNumber = random.nextInt(GlobalVariables.subjects.length);
    _DetailsPage.name = GlobalVariables.subjectsClasses[randomNumber]['place']!;
  }
}
