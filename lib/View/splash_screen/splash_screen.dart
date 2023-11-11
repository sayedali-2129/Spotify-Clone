import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spitify_clone/View/login_screen/login_scree..dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';
import 'package:spitify_clone/utils/image_constant/image_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.bgBlackColor,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ConstantImage.spotifyLogo))),
        ),
      ),
    );
  }
}
