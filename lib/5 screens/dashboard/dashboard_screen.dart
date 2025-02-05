import 'package:cargo_sync_driver/5%20screens/dashboard/widgets/bottom_nav_bar.dart';
import 'package:cargo_sync_driver/5%20screens/home/home_screen.dart';
import 'package:cargo_sync_driver/5%20screens/profile/profile_screen.dart';
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
    HomeScreen(),
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
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
            bottom: 20), // Adjust the value to uplift the navbar
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                20), // Adjust the value for rounded corners
            child: Material(
              elevation: 0, // Remove elevation
              child: CustomBottomNavBar(
                currentIndex: _selectedIndex, // Pass the current index
                onItemTapped: _onItemTapped, // Pass the callback function
              ),
            ),
          ),
        ),
      ),
    );
  }
}
