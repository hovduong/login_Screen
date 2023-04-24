import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(3, 107, 185, 1)),
    );
  }
}
