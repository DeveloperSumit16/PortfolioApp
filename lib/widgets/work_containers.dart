import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';

class WorkContainers extends StatelessWidget {
  const WorkContainers(this.workTitle, this.workImage, this.workDescription,
      {super.key});

  final String workTitle;
  final String workImage;
  final String workDescription;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return Container(
      height: s.height / 1.35,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Constants.mainColor, width: 4),
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workTitle,
              style: GoogleFonts.playfairDisplay(color: Colors.black, fontSize: 24),
            ),
            const Divider(color: Constants.mainColor),
            Image.asset(workImage, fit: BoxFit.cover, scale: 2, alignment: Alignment.center,),
            SizedBox(height: s.height*0.025),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Constants.mainColor,
                border: Border.all(color: Constants.bodyColor, width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                workDescription,
                style: GoogleFonts.lato(color: Colors.black45, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
