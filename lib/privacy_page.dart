import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_txt.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Privacy Policy"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),
                Text("Bible Journey (“we”, “us”) is committed to \nprotecting your privacy. This policy explains \nhow we handle your information.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                CustomTxt(
                    title: "\n1. What We Collect", 
                    subtitle: "● Account info: name, email, password.\n● App usage: which devotions, journeys, \n   prayers, actions, and quizzes you use.\n● Device info: device type, app version, \n   basic analytics.\n● Payment info: handled securely by App \n   Store / Google Play — we do not store \n   card details."),
             
                CustomTxt(
                    title: "\n2. How We Use Your Information",
                    subtitle: "● Provide daily devotions, journeys, \n    prayers, and quizzes.\n● Personalize your learning and track \n    progress.\n● Improve app performance and fix issues.\n● Manage subscriptions and send essential \n    updates."),
                
                CustomTxt(
                    title: "\n3. How We Share Information",
                    subtitle: "  We do not sell your data.\n    We may share limited info with:\n"
                        "● Service providers (hosting, analytics, \n    support).\n● App Store / Google Play for payments.\v● Legal authorities if required by law."),
                CustomTxt(
                    title: "\n4. Security",
                    subtitle: "We use reasonable measures to protect your \ndata, but no system is 100% secure.\n5. Your Rights\nYou may request:"
                        "\n● Access, correction, or deletion of your\n data\n● To stop receiving emails or notifications\nContact us at: [YOUR SUPPORT EMAIL]"),
              CustomTxt(title: "\n5. Children", subtitle: "The app is not intended for children under \n13. We do not knowingly collect their data.\n7. Changes\nWe may update this policy. Any changes will \nbe posted with a new date.\n8. Contact\nIf you have questions:\n 📧 [YOUR SUPPORT EMAIL] \n 🌐 [YOUR WEBSITE]")
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

