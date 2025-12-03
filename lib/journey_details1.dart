import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/daily_devotion_screen.dart';
import 'package:bible_journey/daily_prayer_screen.dart';
import 'package:bible_journey/daily_reflection_space.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/today_action.dart';
import 'package:bible_journey/widgets/buttons/custom_form.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class JourneyDetails1 extends StatefulWidget {
  const JourneyDetails1({super.key});

  @override
  State<JourneyDetails1> createState() => _JourneyDetails1State();
}

class _JourneyDetails1State extends State<JourneyDetails1> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF8F5F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF8F5F2),
          title: const Text("Journey Details"),
          centerTitle: true,
          elevation: 0,
         ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              "Day 1:   Before the Beginning, God",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 5),
          CustomForm(title: "Daily Prayer", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DailyPrayerScreen(),
              ),
            );
          }),
          SizedBox(height: 5),
          CustomForm(title: "Daily Devotion", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DailyDevotionScreen(),
              ),
            );
          }),
          SizedBox(height: 5),
          CustomForm(title: "Today's Action", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TodayAction(),
              ),
            );
          }),
          SizedBox(height: 5),
          CustomForm(title: "Daily Reflection Space", onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DailyReflectionSpace(),
              ),
            );
          }),
        ],
      ),

      bottomNavigationBar: CustomNavbar(
        currentIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const MainBottomNavScreen()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const BiblePage()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const LifeAreaJourney()));
              break;
            case 3:
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ProfilePage()));
              break;

          }
        },
      ),
        );
  }
}
