import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/widgets/appbar.dart';
import 'package:odyssey/widgets/drawer.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.bodyColor,
        appBar: const CustomAppBar("My Portfolio"),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.pacifico(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    children: [
                      const TextSpan(text: "Hello, my name is "),
                      TextSpan(
                        text: "Sumit Kumar Das",
                        style: GoogleFonts.kalam(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Constants.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: s.height * 0.015),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.pacifico(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    children: [
                      const TextSpan(text: "I am a "),
                      TextSpan(
                        text: "Flutter App Developer",
                        style: GoogleFonts.kalam(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Constants.mainColor,
                        ),
                      ),
                      const TextSpan(text: "|"),
                    ],
                  ),
                ),
                SizedBox(height: s.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipOval(
                          child: Image.asset(
                              "assets/images/profile2_bgremoved.png")),
                    ),
                    Expanded(
                      child: Text(
                        "I am a passionate Flutter App Developer, eager to learn and grow. While I may not have extensive experience, I am dedicated to handling any backend and frontend tasks, always striving to deliver high-quality solutions.",
                        style: GoogleFonts.crimsonText(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: s.height*0.04),
                Center(
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: Constants.mainColor, elevation: 8, shadowColor: Constants.mainColor),
                        onPressed: () {},
                        icon: const Icon(Icons.download, size: 18),
                        label: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Resume",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(height: s.height*0.04),
                Center(
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: Constants.mainColor, elevation: 8, shadowColor: Constants.mainColor),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.web, size: 18),
                        label: const Text(
                          "Know More",
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
