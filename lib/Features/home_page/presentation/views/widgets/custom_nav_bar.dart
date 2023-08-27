import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap, required this.index});

  final void Function(int)? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      elevation: 10,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: index,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/greyhome.png',
            height: 30,
          ),
          label: '',
          activeIcon: Image.asset(
            'assets/icons/whitehome.png',
            height: 30,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/greyheart.png',
            height: 30,
          ),
          label: '',
          activeIcon: Image.asset(
            'assets/icons/whiteheart.png',
            height: 30,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/greyprofile.png',
            height: 30,
          ),
          label: '',
          activeIcon: Image.asset(
            'assets/icons/whiteprofile.png',
            height: 30,
          ),
        ),
      ],
    );
  }
}
