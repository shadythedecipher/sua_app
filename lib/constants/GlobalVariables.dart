// ignore_for_file: file_names

import 'package:flutter/material.dart';

String uri = 'http://192.168.43.121:3000';

class GlobalVariables {
  static String loremIpsumParagraph =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
      'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
      'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
      'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
      'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
      'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
      'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
      'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
      'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
      'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
      'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
      'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
      'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
      'vitae.\n'
      '\n'
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
      'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
      'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
      'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
      'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
      'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
      'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
      'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
      'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
      'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
      'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
      'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
      'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
      'vitae';

  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Colors.green;
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.green[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];
  static const List<String> carouselImagesS = [
    'assets/images/suaBestimage1.jpg',
    'assets/images/colimage3.PNG',
    'assets/images/colimagmain.PNG',
    'assets/images/colimg1.PNG',
    'assets/images/colimg2.PNG'
  ];

  static List<Map<String, String>> subjects = [
    {
      'title': 'INF 308',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 309',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 311',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 312',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 313',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 315',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 316',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
    {
      'title': 'INF 317',
      'image': 'assets/images/subjectCoverPhoto.png',
    },
  ];
  static List<Map<String, String>> subjectsClasses = [
    {
      'title': 'INF 308',
      'place': 'SD 1',
    },
    {
      'title': 'INF 309',
      'place': 'SD 2',
    },
    {
      'title': 'INF 311',
      'place': 'SD 3',
    },
    {
      'title': 'INF 312',
      'place': 'SD 4',
    },
    {
      'title': 'INF 313',
      'place': 'SC 1',
    },
    {
      'title': 'INF 315',
      'place': 'SC 2',
    },
    {
      'title': 'INF 316',
      'place': 'SC 3',
    },
    {
      'title': 'INF 317',
      'place': 'SC 4',
    },
  ];
  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Students',
      'image': 'assets/images/student.png',
    },
    {
      'title': 'Staffs',
      'image': 'assets/images/office-staff.png',
    },
    {
      'title': 'ICT',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Apply',
      'image': 'assets/images/apply1.png',
    },
    {
      'title': 'Study',
      'image': 'assets/images/study1.png',
    },
    {
      'title': 'Research',
      'image': 'assets/images/research1.png',
    },
    {
      'title': 'Academics',
      'image': 'assets/images/academics1.png',
    },
    {
      'title': 'Library',
      'image': 'assets/images/library1.png',
    },
  ];
}
