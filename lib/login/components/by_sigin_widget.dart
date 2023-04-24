import 'package:flutter/material.dart';

class BySigningWidget extends StatelessWidget {
  const BySigningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
              text: "By signing in you are agreeing our ",
              style: TextStyle(
                  color: Color.fromRGBO(152, 144, 144, 1),
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: "Term and privacy policy",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500))
        ]),
      ),
    );
  }
}
