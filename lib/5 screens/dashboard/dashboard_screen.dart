import 'package:cargo_sync_driver/5%20screens/dashboard/widgets/bottom_nav_bar.dart';
import 'package:cargo_sync_driver/5%20screens/home/home_screen.dart';
import 'package:cargo_sync_driver/5%20screens/profile/profilescreen.dart';
import 'package:cargo_sync_driver/5%20screens/trip/trip_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // List of pages corresponding to each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const TripScreen(),
    const ProfileScreen(),
  ];

  // Method to update the selected index and display the appropriate page
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex, // Pass the current index
        onItemTapped: _onItemTapped, // Pass the callback function
      ),
    );
  }
}
