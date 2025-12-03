import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_details1.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_personal.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Profile Details"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              height: 173,
              width: 380,
              decoration: BoxDecoration(
                color: const Color(0xffE3E9E3),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/User.png',
                            width: 78,
                            height: 78,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 1),
                      const Text(
                        'Anik',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff83BF8B),
                        ),
                      ),
                      const Text(
                        'Premium User',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffABABAB),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                    SizedBox(height: 25),
                    
                    CustomPersonal(
                        textIcon: Icons.person,
                        text: "FULL NAME",
                        subText: "Itunuoluwa Abidoye"),

                    SizedBox(height: 18),
                    CustomPersonal(
                        textIcon: Icons.email,
                        text: "YOUR EMAIL",
                        subText: 'Itunuoluwa@petra.africa' ),
                    SizedBox(height: 18),

                    CustomPersonal(
                        textIcon: Icons.date_range,
                        text: "DATE OF BIRTH",
                        subText: "18 May, 2001"),

                    SizedBox(height: 18),
                    CustomPersonal(
                        textIcon: Icons.phone ,
                        text: "PHONE",
                        subText: "+880 173101292373"),

                    SizedBox(height: 18),
                    CustomPersonal(
                        textIcon: Icons.accessibility,
                        text: "Gender",
                        subText: "Male"),

                    SizedBox(height: 125),

                    CustomButton(text: "Edit", onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => const ProfileDetails1()));
                    }),

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
