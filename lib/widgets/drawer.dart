import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odyssey/constants/colors.dart';
import 'package:odyssey/provider/drawer_state.dart';
import 'package:odyssey/screens/about_me.dart';
import 'package:odyssey/screens/contact_me.dart';
import 'package:odyssey/screens/home.dart';
import 'package:odyssey/screens/my_skills.dart';
import 'package:odyssey/screens/work.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerState = Provider.of<DrawerState>(context);
    return Drawer(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Constants.mainColor, width: 1),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      backgroundColor: Constants.bodyColor.withOpacity(0.7),
      child: ListView(
        children: [
          // DrawerHeader(child: Container(height: 60)),
          Container(height: 60),
          ListTile(
            onTap: () {
              drawerState.selectIndex(0);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyPortfolio()));
            },
            tileColor: drawerState.selectedIndex == 0? Colors.white : null,
            leading: Icon(Icons.home_filled, color: drawerState.selectedIndex == 0 ?Colors.black : Constants.mainColor),
            title: Text(
              "Home",
              style: GoogleFonts.crimsonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: drawerState.selectedIndex == 0 ?Colors.black : Constants.mainColor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              drawerState.selectIndex(1);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AboutMe()));
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutMe()));
            },
            tileColor: drawerState.selectedIndex == 1 ? Colors.white : null,
            leading: Icon(Icons.info_outline, color: drawerState.selectedIndex == 1 ? Colors.black :Constants.mainColor),
            title: Text(
              "Abount Me",
              style: GoogleFonts.crimsonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: drawerState.selectedIndex == 1 ? Colors.black :Constants.mainColor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              drawerState.selectIndex(2);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MySkills()));
            },
            tileColor: drawerState.selectedIndex == 2 ? Colors.white : null,
            leading: Icon(Icons.dock, color: drawerState.selectedIndex == 2 ? Colors.black :Constants.mainColor),
            title: Text(
              "My Skills",
              style: GoogleFonts.crimsonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: drawerState.selectedIndex == 2 ? Colors.black :Constants.mainColor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              drawerState.selectIndex(3);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Work()));
            },
            tileColor: drawerState.selectedIndex == 3 ? Colors.white : null,
            leading: Icon(Icons.work, color: drawerState.selectedIndex == 3 ? Colors.black :Constants.mainColor),
            title: Text(
              "Work",
              style: GoogleFonts.crimsonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: drawerState.selectedIndex == 3 ? Colors.black :Constants.mainColor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              drawerState.selectIndex(4);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ContactMe()));
            },
            tileColor: drawerState.selectedIndex == 4 ? Colors.white : null,
            leading: Icon(Icons.contact_page, color: drawerState.selectedIndex == 4 ? Colors.black :Constants.mainColor),
            title: Text(
              "Conatct Me",
              style: GoogleFonts.crimsonText(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: drawerState.selectedIndex == 4 ? Colors.black :Constants.mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
