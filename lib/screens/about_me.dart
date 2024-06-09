import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/screens/contact_me.dart';
import 'package:odyssey/widgets/appbar.dart';
import 'package:odyssey/widgets/drawer.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.bodyColor,
        appBar: CustomAppBar('About Me'),
        drawer: CustomDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, I'm Sumit Kumar Das",
                      style: GoogleFonts.pacifico(
                        fontSize: 28,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "I am a recent engineering graduate from Government Engineering College Rajkot with a passion for Flutter app development.",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Text(
                      "Passion for Flutter",
                      style: GoogleFonts.crimsonText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "I love working with Flutter because of its fast development cycles, expressive and flexible UI, and the ability to build natively compiled applications for mobile, web, and desktop from a single codebase.",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Text(
                      "Internship Experience",
                      style: GoogleFonts.crimsonText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "During my internship, I had the opportunity to work on several live projects. I contributed to developing key features, fixing bugs, and optimizing performance. This experience helped me understand the complete app development lifecycle.",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Text(
                      "Skills",
                      style: GoogleFonts.crimsonText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "• Dart\n• Flutter\n• Firebase\n• Firestore\n• Git\n• REST APIs\n• API Testing and Integration\n• Postman\n• State Management (Provider)",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Text(
                      "Goals and Aspirations",
                      style: GoogleFonts.crimsonText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    Text(
                      "I aspire to work on innovative Flutter projects that challenge me and help me grow as a developer. I am looking forward to contributing to impactful mobile applications and becoming an expert in Flutter development.",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Text(
                      "Contact Information",
                      style: GoogleFonts.crimsonText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Constants.mainColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.01),
                    SelectableText(
                      "Mobile: +91 8320256630\nEmail: kumarsumi.das2002@gmail.com\nLinkedIn: www.linkedin.com/in/sumit-kumar-das-7b4a8a2a4\nGitHub: github.com/yourprofile",
                      style: GoogleFonts.crimsonText(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: s.height * 0.03),
                    Center(
                      child: Builder(builder: (context) {
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.mainColor,
                              elevation: 8,
                              shadowColor: Constants.mainColor),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ContactMe()));
                          },
                          icon: Icon(Icons.web, size: 18),
                          label: Text(
                            "Contact Me",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: s.height * 0.03),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
