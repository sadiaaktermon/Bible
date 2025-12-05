import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_password.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Password Change"),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        // Disables the default back button
      ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 20),

                CustomPassword(title: "Enter Your Old Password", onTap: (){}),

                CustomPassword(title: "Enter a New Password", onTap: (){}),

                CustomPassword(title: "Re-enter Your New Password", onTap: (){}),

                const SizedBox(height: 200),

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CustomButton(
                    text: "Done",
                    onTap: () {},
                  ),
                )

              ]
          )
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
