import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class DailyReflectionSpace extends StatefulWidget {
  const DailyReflectionSpace({super.key});

  @override
  State<DailyReflectionSpace> createState() => _DailyReflectionSpaceState();
}

class _DailyReflectionSpaceState extends State<DailyReflectionSpace> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF8F5F2),
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F5F2),
          title: const Text("Daily Reflection Space"),
          centerTitle: true,
          elevation: 0,
        ),

        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const SizedBox(height: 20),
              const Text("Write your Daily Reflection",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                  )
                 ),
                    SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                      child: Container(
                        height: 465,
                        width: 380,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color(0xffE3E9E3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          decoration: InputDecoration(
                            hintText: "Write your Daily reflection here...",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),

                    SizedBox(height: 80),
                    CustomButton(text: "Mark as Done", onTap: (){})
                   ],
                 ),
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
