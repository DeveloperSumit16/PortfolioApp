import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(this.topic, {super.key});

   final String topic;

  @override
  Widget build(BuildContext context) {
    return AppBar(
    elevation: 8,
    backgroundColor: Constants.bodyColor,
    shadowColor: Constants.mainColor.withOpacity(0.4),
    iconTheme: const IconThemeData(color: Constants.mainColor, size: 30),
    title: Text(
      topic,
      style: GoogleFonts.lobster(
        fontSize: 28,
        color: Constants.mainColor,
      ),
    ),
  );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
