import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_language.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Language"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            CustomLanguage(
                svgAssetPath: "assets/images/US.svg",
                title: "English (US)",
                onTap: (){}),

            const SizedBox(height: 10),
            CustomLanguage(
                svgAssetPath: "assets/images/England.svg",
                title: "English (EN)",
                onTap: (){}),

            const SizedBox(height: 10),

            CustomLanguage(
                svgAssetPath: "assets/images/Spain.svg",
                title: "Spanish",
                onTap: (){}),

            const SizedBox(height: 10),

            CustomLanguage(
                svgAssetPath: "assets/images/Italy.svg",
                title: "Italian",
                onTap: (){}),
            const SizedBox(height: 10),

            CustomLanguage(
                svgAssetPath: "assets/images/German.svg",
                title: "German",
                onTap: (){}),
            const SizedBox(height: 10),

            CustomLanguage(
                svgAssetPath: "assets/images/France.svg",
                title: "French",
                onTap: (){}),

            const SizedBox(height: 115),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomButton(
                text: "Done",
                onTap: () {},
              ),
            )

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
