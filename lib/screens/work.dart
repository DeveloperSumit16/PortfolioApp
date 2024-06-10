import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/screens/contact_me.dart';
import 'package:odyssey/widgets/appbar.dart';
import 'package:odyssey/widgets/drawer.dart';
import 'package:odyssey/widgets/work_containers.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    List cards = [
      const WorkContainers("Portfolio App", "assets/images/portfolio_app.png",
          "This comes with an attractive and minimilastic look. The purpose of this app is to showcase the introduction and projects build my me or on which i have worked on."),
      const WorkContainers("Company Ledger App", "assets/images/flutter_icon.png",
          "I have worked on this project during my internship at Fuerte Developers. This was specifically a web app. I have worked on this app during its developing phase. Having a hands-on experience on this kind of app helped me to build Responsive apps that will be compatible to both mobile and desktop screen. Working on this app introduces me to several flutter  packages for better enhancement of the app. Technologies like Postman and intergrating APIs built on node.js helped me to understand and perform different CRUD operations."),
      const WorkContainers("Grocery App", "assets/images/flutter_icon.png",
          "This was also a project I got a chance to work on during its developemt phase. It is a Grocery App that was lisenced by my previous company Fuerte Developers. My role on this app was to create interactive and responsive screens for the app. Working on this app helps me a lot to understand flutter core concepts."),
      const WorkContainers("Food App", "assets/images/food_app2.png",
          "To understand the concepts of Firebase, Firestore I choose to work on this app. Tere were many firebase concepts of firebase like signup and login, forget password, store data and images, deleting user, even other features like Flutter Stripe Payment gateway, helps me to understand somne core features and concepts of firebase and payment portal."),
      const WorkContainers("Quiz App", "assets/images/quiz_app2.png",
          "This is a small app that comes with the use of some flutter mobile app Widgets and also helped me to create a attractive app."),
    ];

    return Scaffold(
      backgroundColor: Constants.bodyColor,
      appBar: const CustomAppBar("My Works"),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: s.height / 1.35,
            child: CardSwiper(
              cardsCount: cards.length,
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) =>
                      cards[index],
              numberOfCardsDisplayed: 3,
            ),
          ),
          const SizedBox(height: 20),
          Builder(builder: (context) {
            return ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.mainColor,
                  elevation: 8,
                  shadowColor: Constants.mainColor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactMe()));
              },
              icon: const Icon(Icons.web, size: 18),
              label: const Text(
                "Contact Me",
                style: TextStyle(fontSize: 18),
              ),
            );
          }),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
