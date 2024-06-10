import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/screens/contact_me.dart';
import 'package:odyssey/widgets/appbar.dart';
import 'package:odyssey/widgets/drawer.dart';
import 'package:odyssey/widgets/hard_skills_icon.dart';
import 'package:odyssey/widgets/soft_skills.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bodyColor,
      appBar: const CustomAppBar("My Skills"),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hard Skills",
                style: GoogleFonts.lora(
                    fontSize: 30,
                    color: Constants.mainColor,
                    fontWeight: FontWeight.w600),
              ),
              const Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    HardSkillIcons(
                        "assets/images/dart_icon.png", 1.4, 0.7, "70 %"),
                    HardSkillIcons(
                        "assets/images/flutter_icon.png", 2.4, 0.7, "70 %"),
                    HardSkillIcons(
                        "assets/images/firebase_icon.png", 2.7, 0.6, "60 %"),
                    HardSkillIcons(
                        "assets/images/git_icon.png", 2.9, 0.7, "70 %"),
                    HardSkillIcons("assets/images/api_icon.png", 2.8, 0.6, "60 %",
                        imageColor: Colors.white),
                    HardSkillIcons(
                        "assets/images/postman_icon.png", 2.7, 0.6, "60 %"),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Soft Skills",
                style: GoogleFonts.lora(
                    fontSize: 30,
                    color: Constants.mainColor,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              const SoftSkills(softSkill: "Problem Solving", percentageInBar: 0.8),
              const SizedBox(height: 10),
              const SoftSkills(softSkill: "Time Management", percentageInBar: 0.7),
              const SizedBox(height: 10),
              const SoftSkills(softSkill: "Teamwork", percentageInBar: 0.8),
              const SizedBox(height: 10),
              const SoftSkills(softSkill: "Adaptability", percentageInBar: 0.9),
              const SizedBox(height: 10),
              const SoftSkills(softSkill: "Patience", percentageInBar: 0.75),
              const SizedBox(height: 20),
              Center(
                      child: Builder(builder: (context) {
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.mainColor,
                              elevation: 8,
                              shadowColor: Constants.mainColor),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactMe()));
                          },
                          icon: const Icon(Icons.web, size: 18),
                          label: const Text(
                            "Contact Me",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                    ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
