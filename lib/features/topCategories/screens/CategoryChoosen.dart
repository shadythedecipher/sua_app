// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sua_app/commonWidget/containeranimation.dart';

class CategorySelectedScreen extends StatefulWidget {
  static String routeName = "categoryChosen";

  const CategorySelectedScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CategorySelectedScreen> createState() => _CategorySelectedScreenState();
}

class _CategorySelectedScreenState extends State<CategorySelectedScreen> {
  @override
  Widget build(BuildContext context) {
    return const OpenContainerTransformDemo(
        category: "if it is blank you know your man");
  }
}
