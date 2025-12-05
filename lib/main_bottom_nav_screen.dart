import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/today_action.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:bible_journey/daily_prayer_screen.dart';
import 'package:bible_journey/daily_devotion_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F5F2),
        automaticallyImplyLeading: false,

        toolbarHeight: 64,
        title: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/Anik.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              "Good Morning, Anik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            iconSize: 25,
            color: Color(0xff83BF8B),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: double.infinity,
                height: 320,
                color: Color(0xFFF8F5F2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DailyPrayerScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: 165,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                  SvgPicture.asset(
                                  'assets/images/Vector (3).svg',
                                  width: 25,
                                  height: 25,),
                                    SizedBox(height: 10),
                                    Text(
                                      'Daily Prayer',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Start your day with a\nguided prayer.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DailyDevotionScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: 165,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                  SvgPicture.asset(
                                  'assets/images/Vector (1).svg',
                                  width: 24,
                                  height: 24,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Daily Devotion',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Reflect on today's \nscripture.",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    InkWell(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TodayAction(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: 165,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                SvgPicture.asset(
                                  'assets/images/Vector (4).svg',
                                  width: 25,
                                  height: 25,
                                  color: Colors.green,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Today's Actions",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Small tasks to live \nout our faith.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ),


                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: 165,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  SvgPicture.asset(
                                    'assets/images/Vector (2).svg',
                                    width: 25,
                                    height: 25,
                                    color: Colors.green,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Begin a Journey',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Guided plan for\ngrowth.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 10),

            Container(
              width: double.infinity,
              height: 350,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFF8F5F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/Rectangle 9.png",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore life journeys",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Find guidance on topics like,\npatience or purpose ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 25),
                         CustomButton( text: "View All Journey", onTap: (){
                           Navigator.push(
                               context, MaterialPageRoute(builder: (_) => const LifeAreaJourney()));
                         })

                        ],
                      ),
                    ),
                  ],
                 ),
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
