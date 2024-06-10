import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/screens/icon_with_animtion.dart';
import 'package:odyssey/widgets/appbar.dart';
import 'package:odyssey/widgets/drawer.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.bodyColor,
      appBar: const CustomAppBar("Contact Me"),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: s.height * 0.51,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.mainColor, width: 2),
                    borderRadius: BorderRadius.circular(18)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text("Lets Work Together",
                            style: GoogleFonts.kalam(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.mainColor,
                                wordSpacing: 2)),
                      ),
                      const Divider(),
                      TextFormField(
                        controller: nameController,
                        cursorColor: Constants.mainColor,
                        style: const TextStyle(color: Constants.mainColor),
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Constants.mainColor)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: s.height * 0.011),
                      TextFormField(
                        controller: emailController,
                        cursorColor: Constants.mainColor,
                        style: const TextStyle(color: Constants.mainColor),
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Constants.mainColor)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: s.height * 0.011),
                      TextFormField(
                        controller: messageController,
                        maxLines: 5,
                        cursorColor: Constants.mainColor,
                        style: const TextStyle(color: Constants.mainColor),
                        decoration: InputDecoration(
                            hintText: "Write your message",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1.3, color: Constants.mainColor)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: s.height * 0.011),
                      Builder(builder: (context) {
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.mainColor,
                              elevation: 8,
                              shadowColor: Constants.mainColor),
                          onPressed: () async {
                            await _sendMessage(context);
                          },
                          icon: const Icon(Icons.send, size: 18),
                          label: const Text(
                            "Send Message",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              SizedBox(height: s.height * 0.04),
              const IconWithAnimatedLabel(
                  iconImage: "assets/images/phone_icon.png",
                  labelText: "+91 832025660"),
              SizedBox(height: s.height * 0.03),
              const IconWithAnimatedLabel(
                  iconImage: "assets/images/email_icon.png",
                  labelText: "kumarsumi.das2002@gmail.com"),
              SizedBox(height: s.height * 0.03),
              const IconWithAnimatedLabel(
                  iconImage: "assets/images/linked_icon.png",
                  labelText: "www.linkedin.com/in/sumit-kumar-das-7b4a8a2a4"),
              SizedBox(height: s.height * 0.03),
              const IconWithAnimatedLabel(
                  iconImage: "assets/images/github_icon.png",
                  labelText: "https://github.com/DeveloperSumit16"),
              SizedBox(height: s.height * 0.03),
              const IconWithAnimatedLabel(
                  iconImage: "assets/images/whatsapp_icon.png",
                  labelText: "+91 832025660"),
              SizedBox(height: s.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _sendMessage(BuildContext context) async {
    String name = nameController.text;
    String email = emailController.text;
    String message = messageController.text;

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "All fields are required!",
            style: TextStyle(
                color: Constants.bodyColor, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Constants.mainColor,
        ),
      );
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('messages').add({
        'name': name,
        'email': email,
        'message': message,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Message sent successfully!",
            style: TextStyle(
                color: Constants.bodyColor, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Constants.mainColor,
        ),
      );

      nameController.clear();
      emailController.clear();
      messageController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Failed to send message: $e",
            style: const TextStyle(
                color: Constants.bodyColor, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Constants.mainColor,
        ),
      );
    }
  }
}
