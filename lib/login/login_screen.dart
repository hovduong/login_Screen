import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:form_login1/login/components/button_header.dart';
import 'package:form_login1/login/components/by_sigin_widget.dart';
import 'package:form_login1/login/components/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;
  bool isCheck = true;
  bool isEmail = true;
  bool isPass = true;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      right: false,
      left: false,
      bottom: false,
      child: Scaffold(
        body: buildLoginScreen(),
      ),
    );
  }

  Widget buildLoginScreen() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        const SizedBox(height: 50),
        const LoginWidget(),
        const BySigningWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHeaderWidget(
              name: "Login",
              isLogin: isLogin,
              onTap: () {
                isLogin = !isLogin;
                setState(() {});
              },
            ),
            const SizedBox(
              width: 25,
              height: 50,
            ),
            ButtonHeaderWidget(
              name: "Register",
              isLogin: !isLogin,
              onTap: () {
                isLogin = !isLogin;
                setState(() {});
              },
            ),
      
          ],
        ),
      ],
    );
  }
}
