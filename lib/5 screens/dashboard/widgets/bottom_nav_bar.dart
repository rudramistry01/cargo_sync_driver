import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatelessWidget {
  final ValueChanged<int> onItemTapped;
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300, // Light grey color
            width: 1.0, // Border width
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.orange.shade100,
        currentIndex: currentIndex, // Bind the selected index
        onTap: onItemTapped, // Trigger the callback
        selectedItemColor: Colors.orangeAccent, // Color for the selected item
        unselectedItemColor: Colors.white, // Color for unselected items
        type: BottomNavigationBarType.fixed, // Keep all items fixed
        iconSize: 24.sp, // Increase the icon size
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
