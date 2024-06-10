import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:odyssey/screens/home.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyPortfolio()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(child: Lottie.asset("assets/lottie/Animation - 1717662305778.json"))),
    );
  }
}
