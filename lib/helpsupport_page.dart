import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_txt.dart';
import 'package:flutter/material.dart';

class HelpsupportPage extends StatefulWidget {
  const HelpsupportPage({super.key});

  @override
  State<HelpsupportPage> createState() => _HelpsupportPageState();
}

class _HelpsupportPageState extends State<HelpsupportPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Help & Support"),
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
                Text("Welcome to Bible Journey Support"
                    "\n\nWe’re here to ensure your spiritual journey is smooth, meaningful, and easy to follow.\nIf you ever need help, you’re in the right \nplace."
                    "\n\nCommon Questions\n",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
               CustomTxt(
                   title:  "1. How do I start a Journey?\n",
                   subtitle: "Go to the Journeys tab, choose a topic \n(Marriage, Parenting, Happiness, etc.), and \ntap Start.\nYour daily steps will appear automatically."),

               CustomTxt(
                   title: "\n2. How do I access daily devotions and \nprayers?",
                   subtitle: "\nYour daily devotion will appear on the Home \nscreen each morning.\nYou can also browse previous devotions \nfrom the Devotions tab."),
                
                CustomTxt(
                    title: "\n3. Do I need a subscription?",
                    subtitle: "\nSome features—such as full journeys, \npremium devotions, and advanced quizzes—\nrequire a paid subscription.\nBilling is handled by the App Store or Google \nPlay."),

                CustomTxt(
                    title: "\n4. I purchased a subscription but can’t \naccess premium features.\n\nTry these steps:\n",
                    subtitle: "Make sure you’re logged into the correct \naccount.\n\nTap Restore Purchases in the Subscription \nsection.\n\nRestart the app.\n\nIf the issue continues, contact support."),

                CustomTxt(
                    title: "\n5. How do I change my language?\n",
                    subtitle: "Go to Settings → Language and choose your \npreferred language."),

                CustomTxt(
                    title: "\n6. How do I reset my password?\n",
                    subtitle: "On the login screen, tap Forgot Password \nand follow the instructions.\n\nNeed More Help?\n\nContact Us\n\nIf you can’t find the answer you need, we’re \nhappy to help.\n\n📧 Email Support: [YOUR SUPPORT EMAIL]\n🌐 Website: [YOUR WEBSITE]\n\nWe usually respond within 24–48 hours.\n"),

                CustomTxt(title: "Feedback", subtitle: "\nYour feedback helps us improve.\nIf you have ideas, suggestions, or features \nyou want to see, send us a message \nanytime.\n\nThank You\n\nThank you for using Bible Journey!\nWe’re honored to support your daily spiritual \ngrowth."),

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