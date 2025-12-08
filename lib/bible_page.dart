import 'package:bible_journey/daily_reflection_space.dart';
import 'package:bible_journey/life_area_journey.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/new_testament.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:bible_journey/widgets/buttons/custom_minibox.dart';
import 'package:bible_journey/widgets/buttons/custom_navbar.dart';
import 'package:flutter/material.dart';

class BiblePage extends StatefulWidget {
  const BiblePage({super.key});

  @override
  State<BiblePage> createState() => _BiblePageState();
}

class _BiblePageState extends State<BiblePage> {
  int _selectedIndex = 1;
  bool isOldSelected = false;
  bool showMarkChapters = false;
  bool showLukeChapters = false;
  bool showAll = false;
  bool showActsChapters = false;
  bool showRomans = false;
  bool showCorinthians1 = false;
  bool showCorinthians2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F5F2),
        title: const Text("New Testament Browser"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder:(context)=>MainBottomNavScreen() )),
        ),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffE5EDE8),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeInOut,
                    left: isOldSelected ? 0 : MediaQuery.of(context).size.width * 0.5 - 20 * 2,
                    top: 0,

                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 81),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xff83BF8B),
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isOldSelected = true;
                          });
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => const NewTestament()));
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Old Testament",
                            style: TextStyle(
                              fontSize: 14,
                              color: isOldSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isOldSelected = false;
                          });
                        },

                        child: Container(
                          height: 37,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "New Testament",
                            style: TextStyle(
                              fontSize: 14,
                              color: isOldSelected ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
        
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Gospels",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              height: 280,
              decoration: BoxDecoration(
                color: const Color(0xffFCFAF9),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Color(0xffDAD6D6),
                  width: 1,
                ),
              ),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Matthew",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "28 Chapters",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 5),


                              SizedBox(
                                height: 40,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...List.generate(
                                        showAll ? 28 : 6,
                                            (index) => Padding(
                                          padding: const EdgeInsets.only(right: 2),
                                          child: CustomMinibox(
                                            number: index + 1,
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) => const DailyReflectionSpace(),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      if (!showAll)
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showAll = true;
                                            });
                                          },
                                          child: Container(
                                            width: 27,
                                            height: 26,
                                            margin: const EdgeInsets.only(left: 2),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "...",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showAll = !showAll;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Icon(
                            showAll ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Mark Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mark",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "24 Chapters",
                              style: TextStyle(fontSize: 10),
                            ),
                            if (showMarkChapters)
                              SizedBox(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                      24,
                                          (index) => Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: CustomMinibox(
                                          number: index + 1,
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => const DailyReflectionSpace(),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showMarkChapters = !showMarkChapters;
                          });
                        },
                        child: Icon(
                          showMarkChapters ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 19),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Luke",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "24 Chapters",
                              style: TextStyle(fontSize: 10),
                            ),
                            if (showLukeChapters)
                              SizedBox(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                      24,
                                          (index) => Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: CustomMinibox(
                                          number: index + 1,
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => const DailyReflectionSpace(),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showLukeChapters = !showLukeChapters;
                          });
                        },
                        child: Icon(
                          showLukeChapters ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                ],
          ),
        ),

            SizedBox(height: 5),
        
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "History",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xffFCFAF9),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xffDAD6D6),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Acts",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "24 Chapters",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showActsChapters = !showActsChapters;
                          });
                        },
                        child: Icon(
                          showActsChapters ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  if (showActsChapters)
                    SizedBox(
                      height: 40,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            24,
                                (index) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: CustomMinibox(
                                number: index + 1,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const DailyReflectionSpace(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Paul's Letters",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          height: 290,
          decoration: BoxDecoration(
            color: const Color(0xffFCFAF9),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Color(0xffDAD6D6),
              width: 1,
            ),
          ),
          child: Column(
            children: [

              //ROMANS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Romans",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "16 Chapters",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 5),

                          if (showRomans)
                            SizedBox(
                              height: 40,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    16,
                                        (index) => Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: CustomMinibox(
                                        number: index + 1,
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => const DailyReflectionSpace(),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showRomans = !showRomans;
                      });
                    },
                    child: Icon(
                      showRomans ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // 1 CORINTHIANS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "1 Corinthians",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "16 Chapters",
                          style: TextStyle(fontSize: 10),
                        ),

                        if (showCorinthians1)
                          SizedBox(
                            height: 40,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  16,
                                      (index) => Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: CustomMinibox(
                                      number: index + 1,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => const DailyReflectionSpace(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showCorinthians1 = !showCorinthians1;
                      });
                    },
                    child: Icon(
                      showCorinthians1 ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 19),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "2 Corinthians",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "13 Chapters",
                          style: TextStyle(fontSize: 10),
                        ),

                        if (showCorinthians2)
                          SizedBox(
                            height: 40,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  13,
                                      (index) => Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: CustomMinibox(
                                      number: index + 1,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => const DailyReflectionSpace(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showCorinthians2 = !showCorinthians2;
                      });
                    },
                    child: Icon(
                      showCorinthians2 ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30,
                    ),
                  ),
                ],
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
