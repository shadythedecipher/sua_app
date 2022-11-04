// ignore_for_file: avoid_print

import 'package:location/location.dart';
import 'package:flutter/material.dart';

class LocationF extends StatelessWidget {
  const LocationF({Key? key}) : super(key: key);
  static getLocation() async {
    Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    LocationData data = await location.getLocation();

    if (data.latitude != null) {
      print("location is " + data.toString());
      // _currentLocationTextController.text =
      //     address.countryName! + " " + address.city! + " " +
      //         address.streetAddress!;
      return data.latitude;
    } else {
      return 10;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
