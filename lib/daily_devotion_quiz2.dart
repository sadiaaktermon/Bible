import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:bible_journey/quiz_complete.dart';

class DailyDevotionQuiz2 extends StatefulWidget {
  final int selectedOption;
  final int previousAnswer;

  const DailyDevotionQuiz2({super.key, required this.selectedOption, required this.previousAnswer});

  @override
  State<DailyDevotionQuiz2> createState() => _DailyDevotionQuiz1State();
}

class _DailyDevotionQuiz1State extends State<DailyDevotionQuiz2> {
  int selectedOption = -1;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F5F2),
        title: const Text("Daily Devotion Quiz"),
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
              const Text("Question 3 of 3", style: TextStyle(fontSize: 14, color: Colors.black)),
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
              const SizedBox(height: 36),
              const Text("God needs perfect conditions to work in your life.", style: TextStyle(fontSize: 18, color: Colors.black)),
              const SizedBox(height: 20),

              // Option 1
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = 1;
                  });
                  _goToNextPage();
                },
                child: optionBox("True", 1),
              ),
              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = 2;
                  });

                  _goToNextPage();
                },
                child: optionBox("False", 2),
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


  void _goToNextPage() {
    int correctAnswers = 0;

    // Compare answers to the correct options
    if (widget.previousAnswer == 2) correctAnswers++;
    if (widget.selectedOption == 2) correctAnswers++;
    if (selectedOption == 2) correctAnswers++;


    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizComplete(correctAnswers: correctAnswers),
      ),
    );
  }

  Widget optionBox(String text, int index) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: selectedOption == index ? Color(0xff83BF8B) : Colors.white,
              border: Border.all(color: Color(0xffC8DFC8), width: 2),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Text(text, style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}
