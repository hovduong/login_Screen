import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonHeaderWidget extends StatelessWidget {
  const ButtonHeaderWidget(
      {this.isLogin = false, this.name, this.onTap, super.key});
  final String? name;
  final Function? onTap;
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Text(
        name ?? '',
        style: TextStyle(
            color: isLogin ? Colors.blue : Colors.grey,
            decoration: isLogin ? TextDecoration.underline : null,
            fontSize: 20),
      ),
    );
  }
}
