import 'package:bible_journey/daily_reflection_space.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/new_testament.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_minibox.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class BiblePage extends StatefulWidget {
  const BiblePage({super.key});

  @override
  State<BiblePage> createState() => _BiblePageState();
}

class _BiblePageState extends State<BiblePage> {
  int _selectedIndex = 1;
  bool isOldSelected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("New Testament Browser"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder:(context)=>MainBottomNavScreen() )),
        ),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffE5EDE8),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeInOut,
                    left: isOldSelected ? 0 : MediaQuery.of(context).size.width * 0.5 - 20 * 2,
                    top: 0,

                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 81),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xff83BF8B),
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isOldSelected = true;
                          });
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const NewTestament()));
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Old Testament",
                            style: TextStyle(
                              fontSize: 14,
                              color: isOldSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isOldSelected = false;
                          });
                        },

                        child: Container(
                          height: 37,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "New Testament",
                            style: TextStyle(
                              fontSize: 14,
                              color: isOldSelected ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
        
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Law Pentateuch",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
        
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              height: 185,
              decoration: BoxDecoration(
                color: const Color(0xffFCFAF9),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Color(0xffDAD6D6),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Genesis",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "50 Chapters",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          CustomMinibox(number: 1, onTap:(){
                            Navigator.push(
                                context,  MaterialPageRoute(builder: (_) => const DailyReflectionSpace()));
                          }
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
            ),
        
        
            SizedBox(height: 5),
        
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "The Beginning of Creation",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xffFCFAF9),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Color(0xffDAD6D6),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text(
                      "Exodus",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "The Beginning of Creation",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              height: 175,
              decoration: BoxDecoration(
                color: const Color(0xffFCFAF9),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Color(0xffDAD6D6),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Text(
                      "Leviticus",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
            ),
          ],
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
