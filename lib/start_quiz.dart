import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:bible_journey/daily_devotion_quiz.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});

  @override
  State<StartQuiz> createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F5F2),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
        
              Container(
                height: 200,
            child: Image.asset(
              'assets/images/Rectangle 8.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
                 ),
        
              const SizedBox(height: 25),
        
              const Column(
                children: [
                  Text(
                    "Today's Quiz",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "You've completed a step in 'Finding Peace'!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
        
              const SizedBox(height: 25),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 130,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3E9E3),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "3 Questions",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Total questions",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
        
        
                  Container(
                    height: 130,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFFE3E9E3),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "1 minutes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Estimated time",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        
                ],
              ),
        
              const SizedBox(height: 20),
        
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 130,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFFE3E9E3),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Book of Psalms",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "topics",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
        
              CustomButton(
                text: "Start Quiz",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DailyDevotionQuiz(),
                    ),
                  );
                },
              ),
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
