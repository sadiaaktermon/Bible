import 'package:bible_journey/bible_page.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_button.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("Payments"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: 383,
              height: 78,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xffF8F5F2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xff83BF8B),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Yearly Premium",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "Total amount to be charged",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "\$39.99/year",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Row(
                  children: const [
                  Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Pay by Credit Card",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      )
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.only(left: 45, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Visa.png',
                    width: 50,
                    height: 32,
                  ),
                  const SizedBox(width: 13),
                  Image.asset(
                    'assets/images/Possible payments.png',
                    width: 50,
                    height: 32,
                  ),
                  const SizedBox(width: 13),
                  Image.asset(
                    'assets/images/Possible payments (1).png',
                    width: 50,
                    height: 32,
                  ),
                  const SizedBox(width: 13),
                  Image.asset(
                    'assets/images/Possible payments (2).png',
                    width: 50,
                    height: 32,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xff83BF8B),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff83BF8B),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xff83BF8B),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 310,
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffE3E9E3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.credit_card,
                            color: Color(0xff83BF8B),
                            size: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Credit or Debit Card",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 11),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          "Card Number",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),


                      Container(
                        height: 44,
                        width: 348,
                        margin: const EdgeInsets.only(left: 4.5, right: 12, top: 8, bottom: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff83BF8B),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "00000000000000",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                            Icon(
                              Icons.credit_card,
                              color: Color(0xff83BF8B),
                              size: 28,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          "Name of Card",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      Container(
                        height: 44,
                        width: 348,
                        margin: const EdgeInsets.only(left: 4.5, right: 12, top: 8, bottom: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffC6C6C6),
                            width: 1,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Expiry Date",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  height: 44,
                                  width: 159,
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xffC6C6C6),
                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "MM/YY",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff7F7F7F),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "CVC",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  height: 44,
                                  width: 159,
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xffC6C6C6),
                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "123",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff7F7F7F),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomButton(
                    text: "Pay \$39.99",
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 11),

                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.lock,
                        color: Colors.black87,
                        size: 14,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Your payment is safe and secure",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),

                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(width: 20),
                      Text(
                        "By subscribing, you agree to our Terms of Service. Your \nsubscription will renew automatically.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff787878),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
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
