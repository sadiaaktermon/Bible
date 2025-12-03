import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final Function(int) onItemPressed;
  final int currentIndex;

  const CustomNavbar({
    super.key,
    required this.onItemPressed,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFF8F5F2),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xff83BF8B),
      unselectedItemColor: const Color(0xff595959),
      onTap: onItemPressed, // callback passed from parent
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: "Bible",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Journey",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
