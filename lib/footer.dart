
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Stack(
        children:<Widget> [
          Container(
            width: double.infinity,
            height: 170,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgForm1.png"),
                fit: BoxFit.fill
              )
            ),
          ),
              
          Container(
            width: double.infinity,
            height: 170,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Subtract.png"),
                fit: BoxFit.fill
              )
            ),
          )
        ]
      ),
    );
  }
}