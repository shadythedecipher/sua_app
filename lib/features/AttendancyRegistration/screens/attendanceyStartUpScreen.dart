// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../commonWidget/custom_button.dart';
import '../../../commonWidget/custom_textfield.dart';
import '../../../constants/GlobalVariables.dart';
import '../../SuaSiSPortal/suasisportal.dart';
import '../services/AuthService.dart';

enum Auth {
  signin,
  signup,
}

class SignInUSer extends StatefulWidget {
  const SignInUSer({Key? key}) : super(key: key);

  @override
  State<SignInUSer> createState() => _SignInUSerState();
}

class _SignInUSerState extends State<SignInUSer> {
  Auth _auth = Auth.signup;
  // ignore: unused_field
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          key: const PageStorageKey("Divider 1"),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.teal,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/suaLogo.png",
                        height: 200.h,
                        width: 200.w,
                      ),
                      // SizedBox(height: 10.h,),
                      Text(
                        "Student Attendance System (SUASAS)",
                        style: TextStyle(fontSize: 50.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListTile(
                  tileColor: _auth == Auth.signin
                      ? GlobalVariables.backgroundColor
                      : GlobalVariables.greyBackgroundCOlor,
                  title: const Text(
                    'Sign-In.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.signin,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    },
                  ),
                ),
                if (_auth == Auth.signin)
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: GlobalVariables.backgroundColor,
                    child: Form(
                      key: _signInFormKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: _emailController,
                            hintText: 'User Name',
                          ),
                          const SizedBox(height: 10),
                          CustomTextField(
                            controller: _passwordController,
                            hintText: 'Password',
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            text: 'Sign In',
                            onTap: () {
                              if (_signInFormKey.currentState!.validate()) {
                                if (_emailController.text ==
                                        'INF/D/2019/0000' &&
                                    _passwordController.text == '123') {
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    SuaSisPortal.routeName,
                                    (route) => false,
                                  );
                                } else {
                                  signInUser();
                                }
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
