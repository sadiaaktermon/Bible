import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/daily_devotion_quiz.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class QuizComplete extends StatefulWidget {
  final int correctAnswers;

  const QuizComplete({super.key, required this.correctAnswers});

  @override
  State<QuizComplete> createState() => _QuizCompleteState();
}

class _QuizCompleteState extends State<QuizComplete> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F5F2),
        title: const Text("Quiz Complete"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text("Great Effort!", style: TextStyle(fontSize: 14, color: Colors.black)),
                const SizedBox(height: 13),
                Container(
                  height: 13,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff83BF8B),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xff83BF8B)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 392,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xffE3E9E3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/check_circle.png',
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Correct',
                        style: TextStyle(
                          color: Color(0xff83BF8B),
                          fontSize: 45,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '${widget.correctAnswers}/3',
                        style: TextStyle(
                          color: Color(0xff83BF8B),
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                CustomButton(text: "Continue", onTap: (){
                }),
        
                SizedBox(height: 10),
                CustomButton(text: "Retry Quiz", onTap: (){
                  Navigator.push( context, MaterialPageRoute(builder: (context) => DailyDevotionQuiz()), );
                }),
        
              ],
            ),
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
