import 'package:flutter/material.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HardSkillIcons extends StatelessWidget {
  const HardSkillIcons(this.image, this.imageScale, this.percentageInBar, this.percentageInText, {this.imageColor,super.key});

  final String image;
  final Color? imageColor;
  final double imageScale;
  final double percentageInBar;
  final String percentageInText;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          alignment: Alignment.topLeft,
          // color: Colors.orange,
          width: s.width * 0.45,
          height: s.height * 0.2,
          child: Image.asset(
            color: imageColor,
            image,
            scale: imageScale,
          ),
        ),
        Positioned(
          top: 80,
          left: 80,
          child: CircularPercentIndicator(
            linearGradient: const LinearGradient(
              colors: [
                Constants.mainColor,
                Colors.yellow,
              ],
            ),
            backgroundWidth: 5,
            radius: 40,
            lineWidth: 8,
            percent: percentageInBar,
            center: Text(
              percentageInText,
              style: const TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700)),
            // progressColor: Constants.mainColor,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
