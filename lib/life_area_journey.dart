import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/journey_details.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:bible_journey/widgets/buttons/custom_box.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';


class LifeAreaJourney extends StatefulWidget {
  const LifeAreaJourney({super.key});

  @override
  State<LifeAreaJourney> createState() => _LifeAreaJourneyState();
}

class _LifeAreaJourneyState extends State<LifeAreaJourney> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Life Area Journeys"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Find guidance and wisdom for every season of life.",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ const SizedBox(height: 13),
                  CustomBox(
                      title: "Faith and Perseverance",
                      subtitle: "Nurturing your sacred bond",
                    iconPath: 'assets/images/Vector (3).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JourneyDetails(),
                          ),
                        );
                      }
                      ),
                  const SizedBox(height: 13),
                  CustomBox(
                      title: "Parenting",
                      subtitle: "Parenting Raising a family in faith",
                      iconPath: 'assets/images/Vector (1).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){} ),
                ],
              ),
              const SizedBox(height: 20),
              Row( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13),
                  CustomBox(
                      title: "Happiness & Joy",
                      subtitle: "Discovering true contentment",
                      iconPath: 'assets/images/Vector (4).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){} ),

                  const SizedBox(height: 13),

                  CustomBox(
                      title: "Friendship",
                      subtitle: "Building godly relationships",
                    iconPath: 'assets/images/Vector (2).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){} ),
                ],
              ),
              const SizedBox(height: 20),
              Row( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ const SizedBox(height: 13),

                  CustomBox( title: "Work & Career",
                      subtitle: "Navigating your Friendship",
                    iconPath: 'assets/images/Vector (3).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){}),

                  const SizedBox(height: 13),

                  CustomBox( title: "Community",
                      subtitle: "Connecting with professional life believers",
                    iconPath: 'assets/images/Vector (1).svg',
                        color: Color(0xff83BF8B),
                       onTap: (){} ),
                ],
              ),
              const SizedBox(height: 20),
              Row( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13),
                  CustomBox( title: "Overcoming Anxiety",
                      subtitle: "Finding peace in His presence",
                      iconPath: 'assets/images/Vector (4).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){}
                  ),
                  const SizedBox(height: 13),

                  CustomBox( title: "Finding Purpose",
                      subtitle: "Living a life of meaning",
                      iconPath: 'assets/images/Vector (2).svg',
                        color: Color(0xff83BF8B),
                      onTap: (){}
                  ),
                ],
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
