import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class TermsService extends StatefulWidget {
  const TermsService({super.key});

  @override
  State<TermsService> createState() => _TermsServiceState();
}

class _TermsServiceState extends State<TermsService> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Terms of Service"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: SingleChildScrollView(
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 18),
          Text("By using Bible Journey, you agree to the \nfollowing: \n\nPersonal Use – Use the app only for personal and spiritual growth."
              "\n\nAccount – Keep your login details secure and accurate."
              "\n \nSubscriptions – Some features require a paid subscription. Billing and refunds are handled by the App Store or Google Play. "
            "\n \nContent – Do not copy or misuse app content."
              "\n \nUser Content – Your notes and reflections belong to you, but you must not upload harmful or illegal content."
              "\n\nDisclaimer – The app is for guidance only; results are not guaranteed."
              "\n\nLiability – We are not responsible for damages from using the app."
              "\n\nChanges – We may update these terms, and continued use means you accept them."
              "\n\nQuestions? Contact us at [YOUR SUPPORT \nEMAIL].",

          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
                ),
              ),
            ]
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
