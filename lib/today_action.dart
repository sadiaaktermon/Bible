import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:bible_journey/daily_reflection_space.dart';

class TodayAction extends StatefulWidget {
  const TodayAction({super.key});

  @override
  State<TodayAction> createState() => _TodayActionState();
}

class _TodayActionState extends State<TodayAction> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F5F2),
        title: const Text("Today's Action"),
        centerTitle: true,
        elevation: 0,
      ),
         body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  children: [
              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                child: Container(
                  height: 292,
                  width: 355,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xffE3E9E3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                'Write down one area of your life that feels "formless and empty" right now. It could be a  relationship, a career decision, a health concern, or an emotional struggle.  Now, next to it, write: "God, speak light into this darkness."  Put this note somewhere you'"ll see it today—your mirror, your desk, your phone wallpaper.  Each time you see it, remember: God is already at work.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff616161),
                  ),
                 ),
                ],
               ),
              ),
              ),
                    SizedBox(height: 290),
                    CustomButton(text: "Mark as Done", onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DailyReflectionSpace()),
                      );
                    }),
                    
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
