import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Notifications"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  const Text(
                    "Clear All",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff83BF8B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            CustomNotification(
                title: "Your Daily Devotion is ready ",
                subtitle: "Start your day with a moment of \nreflection.",
                image: "assets/images/jo.svg",
                timeAgo: "5m ago"),

            SizedBox(height: 27),

            CustomNotification(
                title: "Daily Prayer Reminder",
                subtitle: "It's time for your morning prayer.",
                image: "assets/images/jo.svg",

                timeAgo: "5m ago"),

            SizedBox(height: 27),

            CustomNotification(
                title: "Journey Progress Update",
                subtitle: "You've completed a step in 'Finding \nPeace'!",
                image:"assets/images/jo.svg",
                timeAgo: "5m ago" ),

            SizedBox(height: 27),
            Divider(
              color: Color(0xffE3E9E3),
              thickness: 2,
            ),

            SizedBox(height: 25),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Yesterday",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
            SizedBox(height: 20),
            CustomNotification(
                title: "New Devotional Series",
                subtitle: "A new series on 'Gratitude' has been add",
                image:"assets/images/jo.svg",
                timeAgo: "5m ago" ),

            SizedBox(height: 27),

            CustomNotification(
                title: "Verse of the Day",
                subtitle: "Reflect on today's special verse.",
                image:"assets/images/jo.svg",
                timeAgo: "5m ago" ),
         ]
       ),
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
