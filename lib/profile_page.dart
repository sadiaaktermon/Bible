import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/language_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/notification_page.dart';
import 'package:bible_journey/password_page.dart';
import 'package:bible_journey/premium_page.dart';
import 'package:bible_journey/profile_details.dart';
import 'package:bible_journey/terms_service.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:bible_journey/widgets/buttons/custom_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: Center(child: const Text("Profile")),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder:(context)=>MainBottomNavScreen() )),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          height: 145,
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
                  padding: const EdgeInsets.only(top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      const SizedBox(height: 5),
                      CustomText(
                          textIconPath: 'assets/images/User.svg',
                          text: "Profile Details",
                          trailingIcon: Icons.arrow_forward_ios,
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const ProfileDetails()));
                      }),
        
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: const Text(
                          "Username, Email ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
        
                      const SizedBox(height: 5),

                      CustomText(
                          textIconPath: 'assets/images/HandCoins.svg',
                          text: "Subscription",
                          trailingIcon: Icons.arrow_forward_ios,
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => const PremiumPage()));
                          }),

                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: const Text(
                          "Manage Subscription",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Settings",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0xffFCFAF9),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Color(0xffDAD6D6),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    CustomText(
                        textIconPath: 'assets/images/Globe.svg',
                        text: "Change Language",
                        trailingIcon: Icons.arrow_forward_ios,
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const LanguagePage()));
                        }),

                     const SizedBox(height: 10),

                    CustomText(
                        textIconPath: 'assets/images/Bell.svg',
                        text: "Notifications",
                        trailingIcon: Icons.arrow_forward_ios,
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const NotificationPage()));
                        }),

                    const SizedBox(height: 10),

                    CustomText(
                        textIconPath: 'assets/images/LockOpen.svg',
                        text: "Change Password",
                        trailingIcon: Icons.arrow_forward_ios,
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const PasswordPage()));
                        }),

                    const SizedBox(height: 10),

                    CustomText(
                        textIconPath: 'assets/images/ShieldSlash.svg',
                        text: "Disabled Account",
                        trailingIcon: Icons.arrow_forward_ios),
                    const SizedBox(height: 10),

                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Support & Legal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xffFCFAF9),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Color(0xffDAD6D6),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),

                    CustomText(
                        textIconPath: 'assets/images/Headset.svg',
                        text:  "Help & Support",
                        trailingIcon: Icons.arrow_forward_ios),

                    const SizedBox(height: 10),

                    CustomText(
                      text: "Terms of Service",
                      textIconPath: 'assets/images/FileLock.svg',
                      trailingIcon:  Icons.arrow_forward_ios,
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const TermsService()));
                        }),

                    const SizedBox(height: 10),

                    CustomText(
                      textIconPath: 'assets/images/Warning.svg',
                      text: "Privacy Policy ",
                      trailingIcon:  Icons.arrow_forward_ios,),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
        
              SizedBox(height: 10),
        
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 50,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.logout,
                              color: Color(0xff83BF8B),
                              size: 20,
                            ),
        
                            const SizedBox(width: 10),
        
                            const Text(
                              "Log Out",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 13),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff83BF8B),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
              ),
            ]
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