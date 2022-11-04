// ignore_for_file: file_names
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../constants.dart';
// import '../../data/models/auth.dart';
// import '../../utils/popUp.dart';
// import 'newaccount.dart';
// // import 'forgot.dart';
//
// class LoginPage extends StatefulWidget {
//   LoginPage({this.username});
//
//   final String username;
//
//   LoginPageState createState() => LoginPageState();
// }
//
// class LoginPageState extends State<LoginPage> {
//   String _status = 'no-action';
//   String _username, _password;
//
//   final formKey = GlobalKey<FormState>();
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   TextEditingController _controllerUsername, _controllerPassword;
//
//   @override
//   initState() {
//     _controllerUsername = TextEditingController(text: widget.username ?? "");
//     _controllerPassword = TextEditingController();
//     _loadUsername();
//     super.initState();
//     print(_status);
//   }
//
//   void _loadUsername() async {
//     try {
//       SharedPreferences _prefs = await SharedPreferences.getInstance();
//       var _username = _prefs.getString("saved_username") ?? "";
//       var _remeberMe = _prefs.getBool("remember_me") ?? false;
//
//       if (_remeberMe) {
//         _controllerUsername.text = _username ?? "";
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final _auth = Provider.of<AuthModel>(context, listen: true);
//     return Scaffold(
//       key: _scaffoldKey,
//       body: SafeArea(
//         child: ListView(
//           physics: const AlwaysScrollableScrollPhysics(),
//           key: const PageStorageKey("Divider 1"),
//           children: const <Widget>[
//             SizedBox(
//               height: 220.0,
//               child: Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Icon(
//                     Icons.person,
//                     size: 175.0,
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AuthModel {
// }
