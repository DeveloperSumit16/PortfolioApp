import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills(
      {this.softSkill = '', this.percentageInBar = 0.7, super.key});

  final String softSkill;
  final double percentageInBar;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Text(
            softSkill,
            style: GoogleFonts.kalam(
                fontSize: 22,
                color: Constants.mainColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: LinearPercentIndicator(
            lineHeight: 10,
            percent: percentageInBar,
            barRadius: const Radius.circular(5),
            progressColor: Constants.mainColor,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
